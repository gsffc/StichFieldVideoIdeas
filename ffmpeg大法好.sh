# 切veo
ffmpeg -i "cut.mp4" -filter_complex "[0]crop=iw:ih/2:0:0[left];[0]crop=iw:ih/2:0:oh[right]" -map "[left]" -map 0:a cut-left-c.mp4 -map "[right]" -map 0:a cut-right-c.mp4 -c copy

# 直接拼贴
ffmpeg -i cut-left.mp4 -i cut-right.mp4 -filter_complex "[0]crop=iw-235:ih:0:0[left];[1]crop=iw:ih:iw-235:0[right];[left][right]hstack[out]" -map "[out]" cut-stitch.mp4

ffmpeg -i cut-left-perspective.mp4 -i cut-right-perspective.mp4 -filter_complex "[0]crop=iw-100:ih:0:0[left];[1]crop=iw:ih:0:-410[right];[left][right]hstack[out]" -map "[out]" cut-stitch-perspective.mp4


# perspective (为啥perspective里读w h parse error？）
ffmpeg -i cut-left.mp4 -vf perspective="0:0:2048:256:0:1024:2048:1024-256:sense=destination" cut-left-perspective.mp4


# TODO: v360拼贴

