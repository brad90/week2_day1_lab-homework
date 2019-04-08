class Student

  def initialize (name,cohort,prog_lang)
    @name = name
    @cohort = cohort
    @prog_lang = prog_lang
  end

 def name
   return @name
 end

 def cohort
   return @cohort
 end

 def prog_lang
   return @prog_lang
 end

 def set_student_name(name)
   @name = name
 end

 def set_student_cohort(cohort)
   @cohort = cohort
 end

 def set_student_prog_lang(prog_lang)
   @prog_lang = prog_lang
 end

 def student_can_talk
   return "I can talk!"
 end

 def student_fav_prog_lang
   return "I love #{@prog_lang}!"
 end


end
