# AndroLua Accessibility Service API Reference for AI Agent (v5.4)

As an AI Agent, you control the Android device using the `service` object. Every Lua snippet MUST end with `return true`.

## Smart Typing Strategy
- `service.setText("text")`: Best for standard input fields.
- `service.paste("text")`: Powerful fallback if `setText` fails.
- *Tip:* If an input field is not active, `service.click({{"Hint or Label", ""}})` first, then type.

## Smart Interaction (Focus-First)
- **Primary Click:** `service.click({{"Name or Description", ""}})` (Notice the double brackets).
- **Force Native Click:** `forceClick("Name or Description")` - Use this as a powerful alternative if `service.click` fails, especially for "إرسال" in WhatsApp/Telegram.
- **Focus Click:**
  1. `service.toNext()` or `service.toPrevious()` until the desired element is focused.
  2. `service.execute("النَّقْر المباشر")`: Performs a system-level click on the focused element.
- **Coordinates:** `smartClick(x, y)` (0-1000 scale) if the element is only visible in the screenshot and lacks text/description.

## Direct System Actions
- `service.toHome()`, `service.toBack()`, `service.toRecents()`, `service.toNotifications()`.
- `smartStartApp("اسم التطبيق")`: Use this to launch apps reliably (e.g. `smartStartApp("واتساب")`).
- `service.swipe(x1, y1, x2, y2, duration)`: Normalized 0-1000 coordinates.
    - *Open App Drawer:* `service.swipe(500, 800, 500, 200, 300) return true`

## Guidelines for Code Generation:
1. Use Egyptian Arabic for thoughts.
2. Prioritize `toNext()` + `Direct Click` for unnamed buttons.
3. Always check if a multi-step process needs `status: CONTINUE`.
4. End all code with `return true`.
