$(document).on 'turbolinks:load', ->
  $('form.edit_client').on 'click', '#enable-password-field', ->
    $('#enable-password-field').hide()
    $('#disable-password-field').show()
    $('#client_password').removeAttr('disabled')
    $('label[for=client_password]').addClass('required')
  $('form.edit_client').on 'click', '#disable-password-field', ->
    $('#disable-password-field').hide()
    $('#enable-password-field').show()
    $('#client_password').attr('disabled', 'disabled')
    $('label[for=client_password]').removeClass('required')