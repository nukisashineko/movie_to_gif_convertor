TARGET_MOV=sample_console_echo.mp4
TARGET_SOURCE_PATH=movies/src/${TARGET_MOV}
TARGET_DIST_PATH=movies/dist/${TARGET_MOV}.gif
TARGET_TMP_DIR=tmp/${TARGET_MOV}_dir

mkdir -p ${TARGET_TMP_DIR}/{ffempg_dst,png_files_dist}
rm ${TARGET_TMP_DIR}/{ffempg_dst,png_files_dist}/*

ffmpeg -i ${TARGET_SOURCE_PATH} -an -r 10 ${TARGET_TMP_DIR}/ffempg_dst/%04d.png

convert ${TARGET_TMP_DIR}/ffempg_dst/*.png -resize 40% ${TARGET_TMP_DIR}/png_files_dist/%04d.png
convert ${TARGET_TMP_DIR}/png_files_dist/*.png ${TARGET_DIST_PATH}
