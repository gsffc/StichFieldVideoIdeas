# 切veo
ffmpeg -i "cut.mp4" -filter_complex "[0]crop=iw:ih/2:0:0[left];[0]crop=iw:ih/2:0:oh[right]" -map "[left]" -map 0:a cut-left-c.mp4 -map "[right]" -map 0:a cut-right-c.mp4 -c copy

# v360拼贴

