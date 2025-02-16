import Vue from 'vue'
import Vuei18n from 'vue-i18n'

Vue.use(Vuei18n)


export default new Vuei18n({
// export const i18n = new Vuei18n({
  // locale: 'uz',
  // locale: localStorage.local || 'ru',
  locale: ['uz', 'en', 'ru'],
  fallbackLocale: localStorage.local,
  // fallbackLocale: ['uz', 'en', 'ru'],
  
  messages: {
    uz: {
      local: 'uz-latn',
      // organization: window.MY_APP_CONFIG.nameOrganizationUZ,
      organization: "Bank Ipak yo'li",
      organization2: "Res. Ixtisoslashtirilgan Urologiya",
      homeBtnOne: "Oldindan navbatga yo'zilish",
      homeBtnTwo: 'Elektron chiptani olish',
      one: "Bank Ipak yo'li filiallari",
      backBtn : 'ORQAGA',
      empty: "Bo'sh",
      map: 'Xarita',
      workingHours: 'Ish vaqti',
      monday: 'Dushanba',
      tuesday: 'Seshanba',
      wednesday: 'Chorshanba',
      thursday: 'Payshanba',
      friday: 'Juma',
      saturday: 'Shanba',
      sunday: 'Yakshanba',
      search: 'Qidirmoq...',
      profile: 'Profil',
      prOne: 'Mening elektron chiptalarim',
      prTwo: 'Mening buyurtmalarim',
      yourTicket: 'Sizning chiptangiz',
      yourBoTicket: 'Sizning buyurtmangiz',
      number: 'Nomer',
      branch : 'Filial',
      address : 'Manzil',
      service : 'Xizmat',
      validUntil : 'Yaroqlilik muddati',
      booking: "Navbatga yo'zilish",
      personalInformation: "Shaxsiy ma'lumot",
      name: 'Ism',
      surname: 'Familiya',
      email: 'E-mail',
      bookingData: "Ma'lumotlarni bron qilish",
      choose: 'TANLASH',
      date: 'Sana',
      time: 'Vaqt',
      next: 'KEYINGISI',
      successfulBooking: 'Buyurtma muvaffaqiyatli qilindi',
      bookingCode: 'Buyurtma kodi',
      copied: 'Скопировано',
      textClick: 'Buyurtma kodini nusxalash uchun bosing!',
      textPlease: 'Buyurtmangiz tafsilotlari SMS orqali yuboriladi',
      textWe: 'Iltimos, buyurtmangiz codini saqlab oling, bankga tashrif qilganingizda bilet ustuniga kiriting',
      textAlready: "Sizda tugallanmagan chipta bor",
      close: 'YOPISH',
      eTicket: 'Elektron chiptalarim',
      receive: 'Qabul qilish',
      deleteBtnET: "ELEKTRON CHIPTANI O'CHIRISH",
      deleteBtnBO: 'BUYURTMANI BEKOR KILISH',
      deteleText: "CHIPTA O'CHIRILDI",
      initialData: "Shaxsiy ma'lumotlar",
      bookingDetails: "Rezervasyon ma'lumotlari",
      bookADate: 'SANA TANLASH',
      statusYes: 'Holat: Faol',
      statusNo: 'Holati: Faol emas',
      statusСalled: 'Holati: ',
      statusСlosed: "Holati: Yo'piq",
      information: 'Ma `lumot',
      closeText: "Hozirda siz elektron chipta ololmaysiz. Iltimos, ish vaqtida qayting.",
      logoText: 'Elektron navbat partali',
      searchText: 'Tashkilotlarda xizmatlar qidirish',
      listOfServices: "Xizmatlar ro'yxati"
    },
    en: {
      local: 'en',
      // organization: window.MY_APP_CONFIG.nameOrganizationEN,
      organization: "Bank Ipak yo'li",
      organization2: "Republican Center of Urology",
      homeBtnOne: 'Booking',
      homeBtnTwo: 'Get an e-Ticket',
      one: 'Branches of bank Ipak Yuli',
      backBtn : 'BACK',
      empty: 'Empty',
      map: 'Map',
      workingHours: 'Working hours',
      monday: 'Monday',
      tuesday: 'Tuesday',
      wednesday: 'Wednesday',
      thursday: 'Thursday',
      friday: 'Friday',
      saturday: 'Saturday',
      sunday: 'Sunday',
      search: 'Search...',
      profile: 'Profile',
      prOne: 'My e-Tickets',
      prTwo: 'My bookings',
      yourTicket: 'Your e-Ticket',
      yourBoTicket: 'Your booking',
      number: 'Number',
      branch : 'Branch',
      address : 'Address',
      service : 'Service',
      validUntil : 'Valid until',
      booking: 'Booking',
      personalInformation: 'Personal Information',
      name: 'Name',
      surname: 'Surname',
      email: 'E-mail',
      bookingData: 'Booking data',
      choose: 'CHOOSE',
      date: 'Date',
      time: 'Time',
      next: 'Next',
      successfulBooking: 'Successful booking',
      bookingCode: 'Booking code',
      copied: 'Copied',
      textClick: 'Click to copy the booking code!',
      textPlease: 'We will send you by SMS about your booking details, where you can find more information',
      textWe: 'Please save your booking code for later',
      textAlready: 'You have an unfinished ticket',
      close: 'CLOSE',
      eTicket: 'e-Ticket',
      receive: 'RECEIVE',
      deleteBtnET: 'DELETE ELECTRONIC TICKET',
      deleteBtnBO: 'DELETE RESERVATION',
      deteleText: 'DELETED',
      initialData: 'Personal data',
      bookingDetails: 'Booking details',
      bookADate: 'BOOK A DATE',
      statusYes: 'Status: Active',
      statusNo: 'Status: Inactive',
      statusСalled: 'Status: Called by',
      statusСlosed: 'Status: Сlosed',
      information: 'Information',
      closeText: "Currently you can't draw an e-Ticket. Please go back an appointment for at work time.",
      logoText: 'Electronic queue portal',
      searchText: 'Search for services in organizations',
      listOfServices: 'List of services'
    },
    ru: {
      local: 'ru',
      // organization: window.MY_APP_CONFIG.nameOrganizationRU,
      organization: "Ипак Йули банк",
      organization2: "Респ. Центр Урологии",
      homeBtnOne: 'Предварительная запись на обслуживание',
      homeBtnTwo: 'Получить электронный билет',
      one: 'Филиалы банка Ипак Йули',
      backBtn : 'НАЗАД',
      empty: 'Пусто',
      map: 'Карта',
      workingHours: 'Режим работы',
      monday: 'Понедельник',
      tuesday: 'Вторник',
      wednesday: 'Среда',
      thursday: 'Четверг',
      friday: 'Пятница',
      saturday: 'Суббота',
      sunday: 'Воскресенье',
      search: 'Поиск...',
      profile: 'Профиль',
      prOne: 'Мои электронные билеты',
      prTwo: 'Мои бронирования',
      yourTicket: 'Ваш билет',
      yourBoTicket: 'Ваше бронирование',
      number: 'Номер',
      branch : 'Филиал',
      address : 'Адрес',
      service : 'Услуга',
      validUntil : 'Действительно до',
      booking: 'Бронирование',
      personalInformation: 'Персональные данные',
      name: 'Имя',
      surname: 'Фамилия',
      email: 'Почта',
      bookingData: 'Данные бронирования',
      choose: 'ВЫБРАТЬ',
      date: 'Дата',
      time: 'Время',
      next: 'ДАЛЕЕ',
      successfulBooking: 'Успешное бронирование',
      bookingCode: 'Код бронирования',
      copied: 'Скопировано',
      textClick: 'Нажмите, чтобы скопировать код бронирования!',
      textPlease: 'Вы получите SMS о деталях Вашего бронирования, где вы сможете найти дополнительную информацию',
      textWe: 'Пожалуйста, сохраните ваш код бронирования для ввода в билетный терминал при посещении банка',
      textAlready: 'У вас есть незавершеный билет',
      close: 'ЗАКРЫТЬ',
      eTicket: 'Электронный билет',
      receive: 'ПОЛУЧИТЬ',
      deleteBtnET: 'УДАЛИТЬ ЭЛЕКТРОННЫЙ БИЛЕТ',
      deleteBtnBO: 'УДАЛИТЬ БРОНИРОВАНИЕ',
      deteleText: 'УДАЛЕНО',
      initialData: 'Персональные данные',
      bookingDetails: 'Данные бронирования',
      bookADate: 'ЗАБРОНИРОВАТЬ ДАТУ',
      statusYes: 'Статус: Активный',
      statusNo: 'Статус: Неактивный',
      statusСalled: 'Статус: Вызывается',
      statusСlosed: 'Статус: Закрыта',
      information: 'Информация',
      closeText: "В настоящее время вы не можете оформить электронный билет. Пожалуйста, вернитесь в рабочее время.",
      logoText: 'Портал электронной очереди',
      searchText: 'Поиск услуг в организациях',
      listOfServices: 'Список услуг'
    },
  },
  silentFallbackWarn: true,
  silentTranslationWarn: true,
})