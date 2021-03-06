# Releasing With::Version

There're no hard rules about when to release with-version. Release bug fixes frequently, features not so frequently and breaking API changes rarely.

### Release

Run tests, check that all tests succeed locally.

```
bundle install
rake
```

Check that the last build succeeded in [Travis CI](https://travis-ci.org/dblock/with-version) for all supported platforms.

Increment the version, modify [lib/with-version/version.rb](lib/with-version/version.rb).

*  Increment the third number if the release has bug fixes and/or very minor features, only (eg. change `0.2.1` to `0.2.2`).
*  Increment the second number if the release contains major features or breaking API changes (eg. change `0.2.1` to `0.3.0`).

Change "Next Release" in [CHANGELOG.md](CHANGELOG.md) to the new version.

```
### 0.2.2 (7/10/2015)
```

Remove the line with "Your contribution here.", since there will be no more contributions to this release.

Commit your changes.

```
git add README.md CHANGELOG.md lib/with-version/version.rb
git commit -m "Preparing for release, 0.2.2."
git push origin master
```

Release.

```
$ rake release

with-version 0.2.2 built to pkg/with-version-0.2.2.gem.
Tagged v0.2.2.
Pushed git commits and tags.
Pushed with-version 0.2.2 to rubygems.org.
```

### Prepare for the Next Version

Add the next release to [CHANGELOG.md](CHANGELOG.md).

```
Next Release
============

* Your contribution here.
```

Increment the third version number in [lib/with-version/version.rb](lib/with-version/version.rb).

Commit your changes.

```
git add CHANGELOG.md lib/with-version/version.rb
git commit -m "Preparing for next development iteration, 0.2.3."
git push origin master
```
