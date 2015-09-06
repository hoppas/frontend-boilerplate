
gulp.task 'stylus_build', ->
    gulp.src(config.style.src.main)
        .pipe($.plumber())
        .pipe($.stylus())
        .pipe($.base64(
            extensions: ['woff']
            maxImageSize: 1024 * 1024 * 10 # 10 mb
        ))
        .pipe($.cssUrlAdjuster(
            replace: ['../../img/', '../../app/frontend/img/']
        ))
        .pipe($.base64(
            extensions: ['png', 'svg', 'jpg']
            maxImageSize: 1024 * 1024 # 1 mb
        ))
        .pipe($.cssUrlAdjuster(
            replace: ['../../app/frontend/img/','../img/']
        ))
        .pipe($.autoprefixer(
            browser: ['> 5%', 'last 2 versions']
        ))
        .pipe($.cleancss())
        .pipe($.header(config.headerCat, config.version))
        .pipe(gulp.dest(config.style.dest))

    gulp.src(config.style.src.fonts)
        .pipe($.plumber())
        .pipe($.stylus())
        .pipe($.base64(
            extensions: ['woff']
            maxImageSize: 1024 * 1024 * 10 # 10 mb
        ))
        .pipe($.autoprefixer(
            browser: ['> 5%', 'last 2 versions']
        ))
        .pipe($.cleancss())
        .pipe(gulp.dest(config.style.dest))