// final regExpPhoneNumber =
//     RegExp(r'/\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/');
// final regExpPhoneNumber = RegExp(r'^(?:[+0]9)?[0-9]{10}$');
// final regExpPhoneNumber = RegExp(r'\+(374[9643210]\d|1[9643210])\d{1,10}$');

final regExpPhoneNumber =
    RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');
