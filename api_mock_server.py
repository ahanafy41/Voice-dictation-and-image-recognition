import http.server
import socketserver
import json
import logging
import urllib.parse
from io import BytesIO

PORT = 8080

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(message)s')

class MockApiHandler(http.server.BaseHTTPRequestHandler):

    def do_POST(self):
        logging.info(f"Received POST request to: {self.path}")
        content_length = int(self.headers.get('Content-Length', 0))
        body = self.rfile.read(content_length).decode('utf-8')

        response_data = {}
        status_code = 200

        try:
            if "generativelanguage.googleapis.com" in self.path or "/v1beta/models/" in self.path:
                logging.info("Handling Gemini Mock")
                req_json = json.loads(body)
                if 'contents' not in req_json:
                    raise ValueError("Missing 'contents' in Gemini request")

                # Mock Gemini Response
                response_data = {
                    "candidates": [
                        {
                            "content": {
                                "parts": [
                                    {"text": "رد المحاكاة من Gemini: كل شيء يعمل بنجاح."}
                                ]
                            }
                        }
                    ]
                }

            elif "upload/v1beta/files" in self.path:
                 logging.info("Handling Gemini File Upload Mock")
                 response_data = {
                     "file": {
                         "uri": "mock_file_uri://12345"
                     }
                 }
            else:
                 logging.info(f"Unknown Path: {self.path}")
                 response_data = {"error": "Mock server doesn't recognize this path"}
                 status_code = 404

        except Exception as e:
            logging.error(f"Error processing request: {e}")
            response_data = {"error": str(e)}
            status_code = 400

        self.send_response(status_code)
        self.send_header('Content-Type', 'application/json; charset=utf-8')
        self.end_headers()
        self.wfile.write(json.dumps(response_data, ensure_ascii=False).encode('utf-8'))


    def do_GET(self):
        logging.info(f"Received GET request to: {self.path}")
        status_code = 200
        response_data = {}

        try:
             if "generativelanguage.googleapis.com" in self.path and "/v1beta/models" in self.path:
                  logging.info("Handling Gemini Models GET")
                  response_data = {
                      "models": [
                          {"name": "models/gemini-3.1-flash-lite", "displayName": "Gemini 3.1 Flash Lite"},
                          {"name": "models/gemini-2.5-flash", "displayName": "Gemini 2.5 Flash"},
                          {"name": "models/gemini-2.5-pro", "displayName": "Gemini 2.5 Pro"}
                      ]
                  }
             elif "generativelanguage.googleapis.com" in self.path and "mock_file_uri" in self.path:
                  logging.info("Handling Gemini File Status Mock")
                  response_data = {
                       "state": "ACTIVE"
                  }
             else:
                  response_data = {"error": "Mock server GET path not found"}
                  status_code = 404
        except Exception as e:
            logging.error(f"Error processing GET request: {e}")
            response_data = {"error": str(e)}
            status_code = 400

        self.send_response(status_code)
        self.send_header('Content-Type', 'application/json; charset=utf-8')
        self.end_headers()
        self.wfile.write(json.dumps(response_data, ensure_ascii=False).encode('utf-8'))

    def do_PUT(self):
         logging.info(f"Received PUT request to: {self.path}")
         content_length = int(self.headers.get('Content-Length', 0))
         # Just consume the body
         self.rfile.read(content_length)
         self.send_response(200)
         self.send_header('Content-Type', 'application/json; charset=utf-8')
         self.end_headers()
         self.wfile.write(json.dumps({"file": {"uri": "mock_file_uri://67890"}}).encode('utf-8'))

with socketserver.TCPServer(("", PORT), MockApiHandler) as httpd:
    print(f"Mock Server serving at port {PORT}")
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        pass
    httpd.server_close()
