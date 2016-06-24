browserify = require "gulp-browserify"
cssmin     = require "gulp-cssmin"
exec       = (require "child_process").exec
gulp       = require "gulp"
jade       = require "gulp-jade"
less       = require "gulp-less"
livereload = require "gulp-livereload"
rename     = require "gulp-rename"
gutil      = require "gulp-util"

gulp.task "coffee:compile", ->
	gulp.src "./src/js/app.coffee", { read: false }
		.pipe browserify(
				transform: ["coffee-reactify"]
				extensions: [".coffee"]
				paths: ["./node_modules", "./src/js/"]
			).on "error", gutil.log
		.pipe rename "app.js"
		.pipe gulp.dest "./dist/js/"
		.pipe livereload()

gulp.task "less:compile", ->
	gulp.src "./src/less/app.less"
		.pipe less().on "error", gutil.log
		.pipe cssmin().on "error", gutil.log
		.pipe rename suffix: ".min"
		.pipe gulp.dest "./dist/css/"
		.pipe livereload()

gulp.task "index:compile", ->
	gulp.src "./src/index.jade"
		.pipe jade( pretty: true ).on "error", gutil.log
		.pipe gulp.dest "./dist"
		.pipe livereload()

gulp.task "vendor:copy", ->
	gulp.src "./src/vendor/**/*.*"
		.pipe gulp.dest "./dist/vendor"

gulp.task "start", (cb) ->
	exec "node app.js", (err, stdout, stderr) ->
		console.log stdout
		console.log stderr
		cb(err)

gulp.task "watch", ->
	livereload.listen()
	gulp.watch "./src/js/**/*.coffee", ["coffee:compile"]
	gulp.watch "./src/less/**/*.less", ["less:compile"]
	gulp.watch "./src/index.jade", ["index:compile"]

gulp.task "default", ["coffee:compile", "less:compile", "index:compile", "vendor:copy", "start", "watch"]