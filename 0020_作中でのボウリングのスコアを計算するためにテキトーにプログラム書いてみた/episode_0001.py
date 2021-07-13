def score(frames):
 rest = frames
 total = 0
 frame_count = 1
 while rest != []:
  current_frame = rest[0]
  a = current_frame[0]
  b = current_frame[1]
  if len(rest)== 1:
    c = current_frame[2]
    total += a + b + c
  else:
   if a == 10:
    total += strike(rest, frame_count)
   elif a + b == 10:
    total += spare(rest, frame_count)
   else:
    total += a + b
   frame_count += 1
  rest = rest[1:]
 return total

def spare(frames, frame_count):
    return 10 + frames[1][0]

def strike(frames, frame_count):
    assert(frames[0][0] == 10)
    score = 10
    if frame_count == 9:
        score += frames[1][0] + frames[1][1]
    ## frame_count should be <= 9
    elif frames[1][0] == 10:
        score += 10 + frames[2][0]
    else:
        score += frames[1][0] + frames[1][1]
    return score



frames = [
        [10, 0],
        [4, 6],
        [6, 4],
        [10, 0],
        [5, 3],
        [10, 0],
        [3, 2],
        [3, 3],
        [10, 0],
        [10, 10, 10]
]
print(score(frames))

frames = [
        [10, 0],
        [10, 0],
        [10, 0],
        [10, 0],
        [10, 0],
        [10, 0],
        [10, 0],
        [10, 0],
        [10, 0],
        [10, 0, 0]
]
