
        var exports = {};
        function require(module) {
            if (module === '@ffmpeg/ffmpeg' && window.FFmpegWASM) {
                return window.FFmpegWASM;
            }
            console.warn('Dummy require called for:', module);
            return {};
        }
