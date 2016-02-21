java_import 'java.awt.TrayIcon'
java_import 'java.awt.SystemTray'
java_import 'java.awt.PopupMenu'
java_import 'java.awt.MenuItem'

title = 'Hello'
message = "Is it me you're looking for?"
message_type = TrayIcon::MessageType::INFO

tray = SystemTray::system_tray
icon = '/home/paolo/opt/be-server/test/fixtures/icon.png'
image = java.awt.Toolkit.get_default_toolkit.get_image(icon);

popup = PopupMenu.new
default_item = MenuItem.new("blah")
popup.add(default_item);
default_item.add_action_listener { |e|
  puts 'action listener'
  java.lang.System.exit(1)
}

tray_icon = TrayIcon.new(image, "Tray Demo", popup);
tray_icon.tool_tip = "Hello World!"
tray_icon.add_action_listener { |e|   puts "action fired" }

tray.add(tray_icon)
tray_icon.display_message(title, message, message_type);
