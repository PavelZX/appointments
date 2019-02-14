class Doctor {
  constructor(name, gender, speciality, practice_name, practice_location, phone, email) {
    this.name = name;
    this.gender = gender;
    this.speciality = speciality;
    this.practice_name = practice_name;
    this.practice_location = practice_location;
    this.phone = phone;
    this.email = email;
  }
}

$(function() {
  $.getJSON('/doctors.json').success(function(data) {
    let i;
    let doctors = [];

    for (i = 0; i < data.length; i++) {
      let d = new Doctor(
        data[i].name,
        data[i].gender,
        data[i].specialty,
        data[i].practice_name,
        data[i].practice_location,
        data[i].phone,
        data[i].email);
      doctors.push(d);
    }

    let id_list = [];
    id_list = doctors.map(d => id_list.push(d));
    return {
      doctors: doctors,
      id_list: id_list
    };
  });

  $('#next-doctor-button').on('click', function() {
    debugger
    //Find current doctor
    //Check if current doc = last doc
    //Show next doc, or first doc if on last doc
  });
});
