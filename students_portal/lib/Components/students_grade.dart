class GradeData {
  late String userEnrolment;
  late String session;
  late String examType;
  late String semester;
  late String honours;
  late String cardURL;
  // GradeData() {
  //   cardURL = 'x';
  //   examType = 'x';
  //   userEnrolment = 'x';
  //   semester = 'x';
  //   honours = 'x';
  //   session = 'x';
  // }
  getGradeData(GradeData gd) {}
}

// SELECT 
//enrolment_no, 
//semester, 
//session, 
//exam_type, 
//honours
// 	FROM public.gradecard;