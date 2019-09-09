import datetime
import getpass
import sublime
import sublime_plugin

class AddDateTimeCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        self.view.run_command("insert_snippet", { "contents": "%s" %  datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S") } )
