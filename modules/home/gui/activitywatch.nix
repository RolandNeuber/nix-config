{ ... }:
{
  services.activitywatch = {
    enable = true;
    watchers = {
      aw-watcher-afk = {
        settings = {
          timeout = 300;
          poll_time = 2;
        };
      };

      aw-watcher-window = {
        settings = {
          poll_time = 1;
        };
      };
    };
  };
}
