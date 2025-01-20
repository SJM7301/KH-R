#1번
point <- c(7, 7, 8, 8, 9, 10, 10, 10, 11, 20) #문제 배점
answer_sheet <- c(1, 3, 2, 2, 4, 1, 5, 2, 3, 1) #문제 정답
mark <- c(1, 3, 1, 2, 4, 2, 5, 2, 5, 1) #작성 답안

#(1) 학생들이 맞힌 문제의 개수
sum(answer_sheet == mark)

#(2) 성적
sum(point[answer_sheet == mark])

#(3) 배점 수정: 9점 이상, 11점 이하를 10점으로 변경 후 성적 확인
point[point >= 9 & point <= 11] <- 10
point
sum(point[answer_sheet == mark])

#2번
grade<-c(1, 2, 3, 3, 2, 6, 6, 6, 5, 5)
#(1) 팩터 생성 후 학년 정보 저장
grade <- factor(grade)

#(2) 이벤트에 참여하지 않은 학년 확인
levels(grade)

#(3) 6번째 응모한 학년을 9로 수정
grade[6] <- 9

#(4) grade의 내용을 출력 후 결과 확인
grade

#3번
#(1) 책 정보를 묶어서 하나의 자료구조에 저장
book.store <- c('한국문고', '가야서점', '길책방')
book <- list(
  제목 = '바람과 함께 나타나다',
  저자 = '심훈',
  가격 = 30000,
  판매처 = book.store
)

#(2) book의 내용 출력
book

#(3) 저자 확인
book$저자

#(4) 두 번째 판매처 확인
book$판매처[2]