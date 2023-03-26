# bundler_conflict

This is a small project to demonstrate (remind me) that `Bundler` cannot handle 
two different versions of same gem at the same time in the same project.

By executing `bundle install` it throws following error:
```bash
Bundler could not find compatible versions for gem "i18n":
  In snapshot (Gemfile.lock):
    i18n (= 1.5.3)

  In Gemfile:
    new_translation was resolved to 0.1.0, which depends on
      i18n (= 1.5.3)

    old_translation was resolved to 0.1.0, which depends on
      i18n (= 1.5.2)

Running `bundle update` will rebuild your snapshot from scratch, using only
the gems in your Gemfile, which may resolve the conflict.
```
