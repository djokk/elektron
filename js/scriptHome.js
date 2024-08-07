Vue.use(window.vuelidate.default);
const { required, minLength, maxLength } = window.validators;
new Vue({
  el: '#home',
  data: {
    local: '',
    dropLocal: [],
    servicesAll: [],
    uzLang: {
      flag: {
        text: 'uz',
        imgLink: '../img/uzbekistan.png'
      }
    },
    ruLang: {
      flag: {
        text: 'ru',
        imgLink: '../img/russia.png'
      }
    },
    enLang: {
      flag: {
        text: 'en',
        imgLink: '../img/united-states.png'
      }
    },
    ticketLength: 0,
    // api: 'http://api-site',
    api: 'https://api.elektron-navbat.uz',
    // api: 'http://192.168.0.100:4000',
    location: {
      Latitude: '',
      Longitude: ''
    },
    // geo: '',
    service: [],
    serviceAll: [],
    loaderFirst: true,
    loading: false,
    modal: false,
    search: '',
    pickModal: true,
    searchModal: false,
    pickParams: 0,
    isEticketServiceActive: false,
    BranchId: '',
    BranchName: '',
    BranchAddress: '',
    Color: '',
    Background: '',
    eticketModal: false,
    eticketInfo: {
      serviseText: "",
      phone: "+998",
      number: "",
      date: {
        day: "",
        month: "",
        year: "",
      },
      deviceId: "",
      deviceType: "",
      ticketId: "",
      validUntil: "",
      liActive: '',
      code: 0
    },
    serviceId: 0,
    groupId: 0,
    searchInfo: '',
    apiLink: null,
    isActiveCreatedTicket: false,
    isActiveToolTip: false,
    isOpenTimeActive: true,
    isCloseTimeActive: false,
    bookingModal: false,
    bookingInfo: {
      name: "",
      surname: "",
      phone: "+998",
      email: "",
      serviseText: "",
      time: "",
      number: "",
      clientId: "",
      bookingId: "",
      date: {
        day: "",
        month: "",
        year: "",
      },
    },
    isBookingServiceActive: false,
    isTimeActive: false,
    cardModal: false,
    cardModalBg: false,
    cardModalEnd: false,
    alertError: false,
    disabledDates: {
      to: new Date(Date.now() - 8640000), //  Отключить все даты до определенной даты
      days: [6, 0],
      dates: [] // Disable an array of dates
    },
    date: '',
    langDate: vdp_translation_ru.js,
    timeAll: [],
    liTimeActive: 0,
    startDate: '',
    tooltipCopied: false,
    blockedDate: true,
    blockedTime: true,
    bookingStore: [],
    eticketStore: [],
    OrgId: '',
    ticketLength: 0,
    num0: '',
    num1: '',
    num2: '',
    num3: '',
    token: '',
    profil: [],
    modalTelegram: false,
    modalAuth: false,
    modalAuthParams: 1,
    phoneAuth: '+998',
    auth:[],
    call: false,
  },
  components: {
    vuejsDatepicker
  },
  beforeMount() {
    // const token = document.cookie.split('=')[1];
    // const token = JSON.parse(sessionStorage.getItem('auth'));
    // if(token != null || token != undefined) {
    //   if(token != '') {
    //     this.token = token;
    //   }
    // }
    const profil = JSON.parse(sessionStorage.getItem('info'));
    if(profil != null || profil != undefined) {
      if(profil != '') {
        this.token = profil.Token;
        this.profil = profil.Info;
      }
    }
    // console.log(profil);

    this.checkLocal();
    this.loadingLocal();
    
    // if(localStorage.eticket === null || localStorage.eticket === undefined) {
    //   localStorage.setItem('eticket', JSON.stringify([]));
    // }
    // if(localStorage.booking === null || localStorage.booking === undefined) {
    //   localStorage.setItem('booking', JSON.stringify([]));
    // }

    // const deviceId = localStorage.getItem('deviceId');
    // const deviceNumber = Math.random().toString(36).slice(2) + Math.random().toString(36).slice(2);
    // if(deviceId == null || deviceId == undefined) {
    //   localStorage.setItem('deviceId', deviceNumber);
    // } else if(deviceId != '') {
    //   this.deviceId = deviceId;
    // } else {
    //   this.deviceId = deviceNumber;
    //   localStorage.setItem('deviceId', deviceNumber);
    // }
  },
  computed: {
    filteredList() {
      return this.serviceAll.filter(post => {
        return post.BranchName.toLowerCase().includes(this.search.toLowerCase()) ||
              post.BranchAddress.toLowerCase().includes(this.search.toLowerCase()) ||
              post.ServiceName.toLowerCase().includes(this.search.toLowerCase());
      })
    }
  },  
  mounted() {
    let vh = window.innerHeight * 0.01;
    // Then we set the value in the --vh custom property to the root of the document
    document.querySelector('.main').style.setProperty('--vh', `${vh}px`);

    this.loadingProfil();
    this.checkLocation();
    this.closeTime();
    this.startDate = moment().format('YYYYMMDD');
    // this.loadOS();
    this.loadnumber();
    
    // this.token = sessionStorage.getItem('token');
    
    this.eticketInfo.deviceId = localStorage.getItem('deviceId');

    this.eticketInfo.date.day = moment().format("DD");
    this.eticketInfo.date.month = moment().format("MM");
    this.eticketInfo.date.year = moment().format("YYYY");
  },
  methods: {
    loadingProfil() {
      const profil = JSON.parse(sessionStorage.getItem('info'));
      if(profil != '' && profil != null) {
        axios.get(`${this.api}/profil?Phone=${this.profil.Phone}&Token=${this.token}`)
            .then((response) => {
              if(response.data.Status) {
                let info = [];
                if(response.data.Booking != '') {
                  for (let index = 0; index < response.data.Booking.length; index++) {
                    info.push(response.data.Booking[index]);
                  }
                }
                if(response.data.eTicket != '') {
                  for (let index = 0; index < response.data.eTicket.length; index++) {
                    info.push(response.data.eTicket[index]);
                  }
                }
                this.ticketLength = info.length;
              } else {
                // localStorage.clear();
                sessionStorage.clear();
                window.location.reload();
              }
            })
            .catch(error => console.log(error))
            .finally(() => {
              this.loaderFirst = false;
            });
        }
    },
    loadOS() {
      var userAgent = window.navigator.userAgent;
      var platform = window.navigator.platform;
      var macosPlatforms = ['Macintosh', 'MacIntel', 'MacPPC', 'Mac68K'];
      var windowsPlatforms = ['Win32', 'Win64', 'Windows', 'WinCE'];
      var iosPlatforms = ['iPhone', 'iPad', 'iPod'];
      os = null;

      if (macosPlatforms.indexOf(platform) !== -1) {
        os = 'Mac OS';
        this.eticketInfo.deviceType = 2;
      } else if (iosPlatforms.indexOf(platform) !== -1) {
        os = 'iOS';
        this.eticketInfo.deviceType = 2;
      } else if (windowsPlatforms.indexOf(platform) !== -1) {
        os = 'Windows';
        this.eticketInfo.deviceType = 3;
      } else if (/Android/.test(userAgent)) {
        os = 'Android';
        this.eticketInfo.deviceType = 1;
      } else {
        this.eticketInfo.deviceType = 0;
      }
      return os;
    },
    loadnumber() {
      const fpPromise = import('https://openfpcdn.io/fingerprintjs/v3')
        .then(FingerprintJS => FingerprintJS.load())

      // Get the visitor identifier when you need it.
      fpPromise
        .then(fp => fp.get())
        .then(result => {
          // This is the visitor identifier:
          const visitorId = result.visitorId;
          this.eticketInfo.deviceId = visitorId;
        })
    },
    loadingLocal() {
      const local = localStorage.getItem('local');
      switch(local) {
        case 'uz':
          this.local = this.uzLang;
          this.dropLocal[0] = this.ruLang.flag;
          this.dropLocal[1] = this.enLang.flag;
          break;
        case 'ru':
          this.local = this.ruLang;
          this.dropLocal[0] = this.uzLang.flag;
          this.dropLocal[1] = this.enLang.flag;
          break;
        case 'en':
          this.local = this.enLang;
          this.dropLocal[0] = this.ruLang.flag;
          this.dropLocal[1] = this.uzLang.flag;
          break;
      }
    },
    changeLocal(id) {
      localStorage.setItem('local', id);
      const url = window.location.href;
      const re = url.split('/');
      
      // console.log(re);
      if(id != 'ru') {
        window.location = re[0] + '//' + re[2] + '/'+ id + '/';
      } else {
        window.location = re[0] + '//' + re[2];
      }
    },
    checkLocal() {
      const url = window.location.href;
      const re = url.split('/');
      if(re[3] == '') {
        localStorage.setItem('local', 'ru');
      } else if(re[3] != 'ru') {
        localStorage.setItem('local', re[3]);
      }
    },
    openModal(info) {
      if(this.token == '') {
        this.modal = true;
        this.modalAuth = true;
        this.modalAuthParams = 1;
        this.loading = false;
        this.loaderFirst = false;
        this.pickModal = false;
        this.searchModal = false;
        this.eticketModal = false;
      } else {
        this.modal = true;
        this.pickModal = false;
        this.pickModal = true;
        this.searchModal = false;
        this.eticketModal = false;
        const WidthVuiw = document.getElementById("body").clientWidth;
        if(WidthVuiw > 720) {
          document.getElementById("body").classList.add("overflow-hidden");
          document.getElementById("body").classList.add("padding-right-10");
          document.querySelector(".btn-close").classList.add("z-index-1");
          document.querySelector(".modal").style.cssText = "overflow-y: hidden;";
          document.querySelector(".modal-info").style.paddingRight = "10px";
          document.querySelector(".btn-close").style.right = '10px';
        }
        this.searchInfo = info;
        this.Color = info.Color;
        this.Background = info.Background;
        this.groupId = info.GroupId;
        this.serviceId = info.ServiceId;
        
        // if(this.eticketInfo.deviceId === '' || this.eticketInfo.deviceId == undefined) {
        //   this.eticketInfo.deviceId = Math.random().toString(36).slice(2) + Math.random().toString(36).slice(2);
        // }
        
        // if(this.eticketInfo.deviceType === '' || this.eticketInfo.deviceType == undefined) {
        //   this.eticketInfo.deviceType = 0;
        // }
        this.eticketInfo.deviceType = 0;
        // this.eticketInfo.deviceId = Math.random().toString(36).slice(2) + Math.random().toString(36).slice(2);
        this.eticketInfo.deviceId = this.deviceId;

        const infoAuth = JSON.parse(sessionStorage.getItem('info'));
        // console.log(infoAuth);
        this.bookingInfo.name = infoAuth.Info.FirstName;
        this.bookingInfo.surname = infoAuth.Info.LastName; 

        const phone = infoAuth.Info.Phone.split('+');
        // console.log(phone);
        if(phone.length != 2) {
          this.bookingInfo.phone = '+' + infoAuth.Info.Phone;
          this.eticketInfo.phone = '+' + infoAuth.Info.Phone;
        } else {
          this.bookingInfo.phone = infoAuth.Info.Phone;
          this.eticketInfo.phone = infoAuth.Info.Phone;
        }
      }
    },
    closeModal() {
      this.loadingProfil();
      this.modal = false;
      this.eticketModal = false;
      this.bookingModal = false;
      this.search = '';
      this.eticketInfo = {
        serviseText: '',
        phone: '+998',
        liActive: '',
      }
      this.bookingInfo = {
        name: "",
        surname: "",
        phone: "+998",
        email: "",
        serviseText: "",
        time: "",
        number: "",
        clientId: "",
        bookingId: "",
        date: {
          day: "",
          month: "",
          year: "",
        }
      }
      this.serviceId = 0;
      this.groupId = 0;
      this.pickParams = 0;
      document.getElementById("body").classList.remove("overflow-hidden");
      document.getElementById("body").classList.remove("padding-right-10");
      this.bookingModal = false;
      this.isActiveCreatedTicket = false;
      this.alertError = false;

      this.lengthTicket();
    },
    checkLocation() {
      this.loading = true;
      const vm = this;
      let geo = JSON.parse(sessionStorage.getItem('geo'));
      // let location = {
      //   Latitude: '',
      //   Longitude: ''
      // };
      if(geo === null || geo.Latitude === null || geo.Latitude === undefined) {
        navigator.geolocation.getCurrentPosition(function(position) {
          sessionStorage.setItem('geo', JSON.stringify({
            Latitude: position.coords.latitude,
            Longitude: position.coords.longitude
          }));
        });
        setTimeout(() => {
          this.loadingServiceAll();
        }, 1000);
        // navigator.geolocation.getCurrentPosition(function(position) {
        //   vm.location.Latitude = position.coords.latitude;
        //   vm.location.Longitude = position.coords.longitude;
        // });
        // setTimeout(() => {
        //   this.loadingServiceAll();
        //   sessionStorage.setItem('geo', JSON.stringify(this.location));
        // }, 1000);
      } else if(geo.Latitude != '' || geo.Longitude != '') {
        navigator.geolocation.getCurrentPosition(function(position) {
          sessionStorage.setItem('geo', JSON.stringify({
            Latitude: position.coords.latitude,
            Longitude: position.coords.longitude
          }));
        });
        setTimeout(() => {
          this.loadingServiceAll();
        }, 1000);
        // navigator.geolocation.getCurrentPosition(function(position) {
        //   vm.location.Latitude = position.coords.latitude;
        //   vm.location.Longitude = position.coords.longitude;
        // });
        // setTimeout(() => {
        //   this.loadingServiceAll();
        //   sessionStorage.setItem('geo', JSON.stringify(this.location));
        // }, 1000);
      } else {
        this.location.Latitude = geo.Latitude;
        this.location.Longitude = geo.Longitude;
        setTimeout(() => {
          this.loadingServiceAll();
        }, 1000);
      }
      // console.log(location);
    },
    loadingServiceAll() {
      this.serviceAll = []
      const local = localStorage.getItem('local');
      const geolocation = JSON.parse(sessionStorage.getItem('geo'));
      //console.log(geo);
      axios
        .get(`${this.api}/${local}Search`)
        .then((response) => {
          const serviceAll = response.data;
          for(let i=0; i < serviceAll.length; i++) {
            // let geo = Math.sqrt(Math.pow((parseInt(serviceAll[i].Latitude) - this.location.Latitude), 2) + Math.pow((parseInt(serviceAll[i].Longitude) - this.location.Longitude), 2)) * 100;
            let geo= Math.sqrt(Math.pow((parseFloat(serviceAll[i].Latitude) - geolocation.Latitude), 2) + Math.pow((parseFloat(serviceAll[i].Longitude) - geolocation.Longitude), 2)) * 100;  
		
        	//console.log(vm.location.Latitude);
        	//console.log(parseFloat(serviceAll[i].Latitude));
        	//console.log(this.location.Longitude);
        	const mas = {
              "OrgId": serviceAll[i].OrgId,
              "OrgName": serviceAll[i].OrgName,
              "BranchId": serviceAll[i].BranchId,
              "BranchName": serviceAll[i].BranchName,
              "BranchAddress": serviceAll[i].BranchAddress,
              "BranchCoordinates": {
                "Latitude": serviceAll[i].Latitude,
                "Longitude": serviceAll[i].Longitude
              },
              "ServiceId": serviceAll[i].ServiceId,
              "GroupId": serviceAll[i].GroupId,
              "ServiceName": serviceAll[i].ServiceName,
              "Api": serviceAll[i].Api,
              "Color": serviceAll[i].Color,
              "Background": serviceAll[i].Background,
              "Geo": geo.toFixed(1)
            }
            this.serviceAll.push(mas);
          }
          this.sortService();
        })
        .catch(err => { console.log("Error", err); })
        .finally(()=> {
          this.loading = false;
        });
      
      this.loaderFirst = false
    },
    sortService() {
      this.serviceAll.sort((a, b) => Math.round(a.Geo) > Math.round(b.Geo) ? 1: -1);
      this.loading = false;
    },
    openOneTab(id) {
      document.querySelector(".modal").style.cssText = "overflow-y: scroll;";
      document.querySelector(".modal-info").style.paddingRight = "0px";
      document.querySelector(".btn-close").style.right = '0px';
      this.pickModal = false;
      this.pickParams = id;
      
      this.OrgId = this.searchInfo.OrgId;
      this.BranchId = this.searchInfo.BranchId;
      this.BranchName = this.searchInfo.BranchName;
      this.BranchAddress = this.searchInfo.BranchAddress;
      this.serviceId = this.searchInfo.ServiceId;
      this.groupId = this.searchInfo.GroupId;
      this.apiLink = this.searchInfo.Api;
      // console.log(this.searchInfo);
      this.openTwoTab();
      this.$v.$reset();
    },
    openTwoTab() {
      if(this.pickParams == 1) {
        this.bookingModal = true;
        this.bookingInfo.serviseText = this.searchInfo.ServiceName;
        this.loading = true;
      } else if(this.pickParams == 2){
        this.eticketModal = true;
        this.eticketInfo.serviseText = this.searchInfo.ServiceName;
      }
      const local = localStorage.getItem('local');
      axios.get(`${this.api}/service?OrgId=${this.OrgId}&BranchId=${this.BranchId}&Language=${local}`)
        .then((responce) => {
          this.service = responce.data
        })
        .catch(err => {
          console.log("Error", err);
        });

      // console.log(this.searchInfo);
    },
    chooseService() {
      if (this.groupId === 0) {
        this.isBookingServiceActive = false;
        this.isEticketServiceActive = false;
      } else {
        if(this.pickParams == 1) {
          const text = document.getElementById('booking-service-list').querySelector("li.serviceListActive > p").textContent;
          this.bookingInfo.serviseText = text;
          this.isBookingServiceActive = false;
          document.querySelector(".btn-close").classList.add("z-index-1");
          document.querySelector(".modal-info-three").style.cssText = "padding-right: 0px;";
        } else if(this.pickParams == 2){
          const text = document.getElementById('eticket-service-list').querySelector("li.serviceListActive > p").textContent;
          this.eticketInfo.serviseText = text;
          this.isEticketServiceActive = false;
          document.querySelector(".btn-close").classList.add("z-index-1");
        }
        // document.querySelector(".modal-info-three").style.cssText = "height: auto; padding-right: 0px;";
        document.querySelector(".modal").style.cssText = "overflow-y: scroll;";
        document.querySelector(".btn-close").style.right = '0px';
      }
    },
    liServiceActiveLink(id) {
      this.serviceId = id;
      // setTimeout(() => {
      //   if(this.pickParams == 1) {
      //     this.bookingInfo.serviseText = document.getElementById('booking-service-list').querySelector("li.serviceListActive > p").textContent;
      //   } else if(this.pickParams == 2){
      //     this.eticketInfo.serviseText = document.getElementById('eticket-service-list').querySelector("li.serviceListActive > p").textContent;
      //   }
      // }, 200);
    },
    openServiceList(pickParams) {
      if(this.pickParams == 1 || pickParams == 1) {
        this.isBookingServiceActive = true;
        document.querySelector(".modal-info-three").style.cssText = "padding-right: 10px;";
        document.getElementById("booking-form-service-list").style.cssText = 'transform: translate(-50%,-50%);';
      } else if(this.pickParams == 2 || pickParams == 2){
        this.isEticketServiceActive = true;
        document.querySelector(".modal-info-two").style.cssText = "padding-right: 10px;";
        document.getElementById("eticket-form-service-list").style.cssText = 'transform: translate(-50%,-50%);';
      }
      document.querySelector(".btn-close").classList.remove("z-index-1");
      document.querySelector(".modal").style.cssText = "overflow-y: hidden;";
      // document.querySelector(".modal-info-three").style.cssText = "height: auto; padding-right: 10px;";
      document.querySelector(".btn-close").style.right = '10px';
    },
    closeServiceList() {
      if(this.pickParams == 1) {
        this.isBookingServiceActive = false;
        // document.querySelector(".btn-close").classList.add("z-index-1");
        document.querySelector(".modal-info-three").style.cssText = "padding-right: 0px;";
        document.getElementById("booking-form-service-list").style.cssText = 'transform: translate(-50%,-50%);';
        // document.getElementById("booking-form-service-list").style.cssText = 'transform: translate(-48.5%,-50%);';
      } else if(this.pickParams == 2){
        this.isEticketServiceActive = false;
        document.querySelector(".modal-info-two").style.cssText = "padding-right: 0px;";
        document.getElementById("eticket-form-service-list").style.cssText = 'transform: translate(-50%,-50%);';
        // document.getElementById("eticket-form-service-list").style.cssText = 'transform: translate(-48.5%,-50%);';
      }
      document.querySelector(".btn-close").classList.add("z-index-1");
      // document.querySelector(".modal-info-three").style.cssText = "height: auto; padding-right: 0px;";
      document.querySelector(".modal").style.cssText = "overflow-y: scroll;";
      document.querySelector(".btn-close").style.right = '0px';
    },
    // createdTicket() {
    //   this.$v.$touch();
    //   // this.laodingAuth();
    //   if(!this.$v.eticketInfo.phone.$invalid && !this.$v.eticketInfo.serviseText.$invalid) {
    //     this.loading = true;
    //     const phone = this.eticketInfo.phone.split('+').join('');
    //     const local = localStorage.getItem('local');
    //     axios
    //       .post(`${this.api}/historywrite/`, {
    //         OrgId: this.searchInfo.OrgId,
    //         OrgName: this.searchInfo.OrgName,
    //         BranchId: this.BranchId,
    //         // BranchId: parseInt(this.BranchId),
    //         Branch: this.searchInfo.BranchName,
    //         Adress: this.searchInfo.BranchAddress,
    //         ServiceId: this.groupId,
    //         Service: this.eticketInfo.serviseText,
    //         Phone: phone,
    //         Type: 'eTicket',
    //         // Time: moment().format('HH:mm'),
    //         // Date: moment().format('DD/MM/YYYY'),
    //         Language: local,
    //       })
    //       .then(response => { 
    //         console.log(response.data);
    //         this.eticketInfo.code = response.data.Code;
    //         this.eticketInfo.number = response.data.Number;
    //         this.eticketInfo.ticketId = response.data.TicketId;
    //         const local = localStorage.local;
    //         this.eticketInfo.validUntil = moment(response.data.ValidUntil).locale(local).format('MMMM D, YYYY, HH:mm:ss');
    //         setTimeout(() => {
    //           this.loading = false;
    //           this.isActiveCreatedTicket = response.data.Success;
    //         }, 3000);
    //       })
    //       .catch(e => console.log(e));
    //   }
    // },
    createdTicket() {
      this.$v.$touch();
      if(!this.$v.eticketInfo.phone.$invalid && !this.$v.eticketInfo.serviseText.$invalid) {
        this.loading = true;
        const local = localStorage.getItem('local');
        axios
          .post(`${this.apiLink}/CreateNewTicket`, {
            branchId: parseInt(this.BranchId),
            serviceId: this.groupId,
            deviceType: this.eticketInfo.deviceType,
            deviceId: this.token,
            languageId: local,
            phoneNumber: this.eticketInfo.phone,
          })
          .then((response) => {
            this.eticketInfo.code = response.data.Code;
            this.eticketInfo.number = response.data.Number;
            this.eticketInfo.ticketId = response.data.TicketId;
            // const local = localStorage.local;
            this.eticketInfo.validUntil = moment(response.data.ValidUntil).locale(local).format('MMMM D, YYYY, HH:mm:ss');
            
            if(response.data.Success == true) {
              const phone = this.eticketInfo.phone.split('+').join('');

              axios
                .post(`${this.api}/historywrite`, {
                  OrgId: this.searchInfo.OrgId,
                  OrgName: this.searchInfo.OrgName,
                  BranchId: this.BranchId,
                  // BranchId: parseInt(this.BranchId),
                  Branch: this.searchInfo.BranchName,
                  Adress: this.searchInfo.BranchAddress,
                  ServiceId: this.groupId,
                  Service: this.eticketInfo.serviseText,
                  Phone: phone,
                  Type: 'eTicket',
                  Ticket: this.eticketInfo.number,
                  TicketId: this.eticketInfo.ticketId,
                  Language: local,
                })
                .then(response => {
                  if (response.data.Status == true) {
                    this.loading = false;
                    this.isActiveCreatedTicket = response.data.Status;
                  }
                })
                .catch(e => console.log(e));
            }
            // setTimeout(() => {
            //   this.loading = false;
            //   this.isActiveCreatedTicket = response.data.Success;
            // }, 3000);
          })
          .catch((error) => console.log(error));
      }
    },
    closeTime() {
      const time = new Date().getHours();
      // const time = 5;
      if (time >= 9 && time <= 18) {
        this.isOpenTimeActive = true;
        this.isCloseTimeActive = false;
      } else {
        this.isCloseTimeActive = true;
        this.isOpenTimeActive = false;
      }
    },
    customFormatter(date) {
      const local = localStorage.getItem('local');
      // this.bookingInfo.date = moment(date).format('DD/MM/YYYY');
      return moment(date).locale(local).format("MMMM DD, YYYY");
      // return moment(date).format('DD/MM/YYYY');
    },
    openTimeList() {
      if(!this.blockedTime) {
        this.isTimeActive = true;
        document.querySelector(".btn-close").classList.remove("z-index-1");
        document.querySelector(".modal").style.cssText = "overflow-y: hidden;";
        // document.querySelector(".modal-info-three").style.cssText = "height: auto; padding-right: 10px;";
        document.querySelector(".modal-info-three").style.cssText = "padding-right: 10px;";
        document.querySelector(".btn-close").style.right = '10px';
        document.getElementById("booking-form-time-list").style.cssText = 'transform: translate(-50%,-50%);';
      }
    },
    closeTimeList() {
      this.isTimeActive = false;
      document.querySelector(".btn-close").classList.add("z-index-1");
      // document.querySelector(".modal-info-three").style.cssText = "height: auto; padding-right: 0px;";
      document.querySelector(".modal-info-three").style.cssText = "padding-right: 0px;";
      document.querySelector(".modal").style.cssText = "overflow-y: scroll;";
      document.querySelector(".btn-close").style.right = '0px';
      document.getElementById("booking-form-time-list").style.cssText = 'transform: translate(-50%,-50%);';
      // document.getElementById("booking-form-time-list").style.cssText = 'transform: translate(-48.5%,-50%);';
    },
    loadDate() {
      this.loading = true;
      axios
        .get(`${this.searchInfo.Api}/ListFreeDaysMonth?branchId=${this.BranchId}&serviceId=${this.groupId}&startDate=${this.startDate}&languageShortId=${localStorage.local}`)
        .then((response) => {
          const date = response.data;
          // console.log(response.data)
          for(let i = 0; i < date.length; i++) {
            // console.log(this.timeAll[i].Month - 1);
            if(date[i].FreePlacesCount == 0) {
              this.disabledDates.dates.push(new Date(date[i].Year, date[i].Month - 1, date[i].Day));
            }
          }
        })
        .catch((error) => console.log(error))
        .finally(()=> {
          this.loading = false;
        });
    },
    loadTimes() {
      this.loading = true;
      this.timeAll = []
      axios
        .get(`${this.searchInfo.Api}/ListFreeTimes?branchId=${this.BranchId}&serviceId=${this.groupId}&startDate=${moment(this.date).format("YYYYMMDD")}&languageShortId=${localStorage.local}`)
        .then((response) => {
          const time = response.data;
          for(let i = 0; i < time.length; i++) {
            if(time[i].FreePlacesCount != 0) {
              this.timeAll.push(time[i]);
            }
          }
          // console.log(response.data)
        })
        .catch((error) => console.log(error))
        .finally(()=> {
          this.loading = false;
        });
    },
    liTimeActiveLink(id) {
      this.liTimeActive = id;
      setTimeout(() => {
        this.bookingInfo.time = document.getElementById("booking-time-list").querySelector("li.serviceListActive > p").textContent;
      }, 100);
    },
    chooseTime() {
      if (this.bookingInfo.time === "") {
        this.isTimeActive = false;
      } else {
        this.bookingInfo.time = document.getElementById("booking-time-list").querySelector("li.serviceListActive > p").textContent;
        this.isTimeActive = false;
      }
      document.querySelector(".modal-info-three").style.cssText = "padding-right: 0px;";
      // document.querySelector(".modal-info-three").style.cssText = "height: auto; padding-right: 0px;";
      document.querySelector(".modal").style.cssText = "overflow-y: scroll;";
      document.querySelector(".btn-close").style.right = '0px';
    },
    cardPreview() {
      this.$v.$touch();
      if (!this.$v.bookingInfo.$invalid) {
        this.cardModal = true;
        this.cardModalBg = true;
        document.querySelector(".btn-close").classList.remove("z-index-1");
      }
    },
    closeCardPreview() {
      this.cardModal = false;
      this.cardModalBg = false;
      document.querySelector(".btn-close").classList.add("z-index-1");
    },
    createdBooking() {
      this.cardModal = false;
      this.loading = true;
      const local = localStorage.getItem('local');
      const booking = {
        branchId: parseInt(this.BranchId),
        customerID: '',
        email: this.bookingInfo.email,
        firstName: this.bookingInfo.name,
        languageShortId: local,
        lastName: this.bookingInfo.surname,
        name: this.bookingInfo.name + " " + this.bookingInfo.surname,
        note: '',
        phoneNumber: this.bookingInfo.phone,
        serviceId: this.groupId,
        startDate: moment(this.date).format("YYYYMMDD"),
        startTime: this.bookingInfo.time
      }
      
      axios
        .post(`${this.apiLink}/CreateBooking`, booking)
        .then((response) => {
          this.bookingInfo.number = response.data.BookingCode;
          this.bookingInfo.bookingId = response.data.BookingId;
          this.bookingInfo.clientId = response.data.ClientId;
          if(response.data.BookingCode != '') {
            const phone = this.bookingInfo.phone.split('+').join('');
            
            axios
              .post(`${this.api}/historywrite`, {
                  OrgId: this.searchInfo.OrgId,
                  OrgName: this.searchInfo.OrgName,
                  BranchId: parseInt(this.BranchId),
                  Branch: this.searchInfo.BranchName,
                  Adress: this.searchInfo.BranchAddress,
                  FirstName: this.bookingInfo.name,
                  LastName: this.bookingInfo.surname,
                  ServiceId: this.groupId,
                  Service: this.bookingInfo.serviseText,
                  Phone: phone,
                  Type: 'booking',
                  BookingDate: moment(this.date).format("YYYYMMDD"),
                  BookingTime: this.bookingInfo.time,
                  Language: local,
                  BookingCode: this.bookingInfo.number,
                  BookingId: this.bookingInfo.bookingId,
                  ClientId: this.bookingInfo.clientId,
                })
                .then(response => {
                  if (response.data.Status == true) {
                    this.cardModalEnd = true;
                    this.loading = false;
                  }
                })
                .catch(e => console.log(e));
          } else {
            this.loading = false;
            this.cardModalBg = false;
            this.alertError = true;
          }
        })
        .catch((error) => console.log(error));
    },
    closeCardModalEnd() {
      this.cardModalBg = false;
      this.cardModalEnd = false;
      const local = localStorage.getItem('local');
      // const url = window.location.href;
      // const re = url.split('/');
      // console.log(re);
      if(local == 'ru') {
        window.location = '/profil';
      } else if(local == 'en' || local == 'uz') {
        window.location = `/${local}/profil`;
      }
    },
    // closeCardModalEnd() {
    //   this.cardModalBg = false;
    //   this.cardModalEnd = false;
    //   const local = localStorage.getItem('local');
    //   window.location = '/profil?lang=' + local;
    // },
    copy() {
      var id = document.getElementById('booking-code').innerText;
      var elem = document.createElement("textarea");
      document.body.appendChild(elem);
      elem.value = id;
      elem.select();
      document.execCommand("copy");
      document.body.removeChild(elem);
      this.tooltipCopied = true;
      setTimeout(() => {
        this.tooltipCopied = false;
      }, 2000);
    },
    lengthTicket() {
      // const eticket = JSON.parse(localStorage.getItem('eticket'));
      // const booking = JSON.parse(localStorage.getItem('booking'));
      // this.ticketLength = eticket.length + booking.length || 0;
    },
    accountNumber() {
      this.$v.$touch();
      if(!this.$v.phoneAuth.$invalid) {
        this.loading = true;
        const phone = this.phoneAuth.split('+').join('');
        axios.get(`${this.api}/accountNumber?Phone=${phone}`)
          .then(responce => {
            // console.log(responce.data);
            if(responce.data.Status) {
              this.modalAuthParams = 2;
            } else {
              this.modalAuth = false;
              this.modalTelegram = true;
            }
          })
          .catch(error => {
            console.log(error);
          })
          .finally(() => {
            this.loading = false;
          });
      }
    },
    checkNumer() {
      this.$v.$touch();
      if(!this.$v.phoneAuth.$invalid && !this.$v.num0.$invalid && !this.$v.num1.$invalid && !this.$v.num2.$invalid && !this.$v.num3.$invalid) {
        this.loading = true;
        const phone = this.phoneAuth.split('+').join('');
        // axios.post(`${this.api}/checkNumer`,{
        //     "Phone": phone,
        //     "Number": this.num0 + this.num1 + this.num2 + this.num3
        //   })
        // axios.get(`${this.api}/checkNumer?Phone=${phone}&Number=${this.num0 + this.num1 + this.num2 + this.num3}`)
        axios.post(`${this.api}/checkNumer`, {
            "Phone": phone,
            "Number": this.num0 + this.num1 + this.num2 + this.num3
          })
          .then(responce => {
            if(responce.data.Token) {
              sessionStorage.setItem('info', JSON.stringify(responce.data));
              // document.cookie = `token=${responce.data.Token}; max-age=1800;`;
              this.modalAuthParams = 1;
              window.location.reload();
            } else {
              alert('Eroor');
            }
          })
          .catch(error => {
            console.log(error);
          })
          .finally(() => {
            setTimeout(() => {
              this.loading = false;
            }, 3000);
          });
      }
    },
    openTelegram() {
      window.open( 'https://t.me/enavbat_bot', 'windowName' ); 
      window.location.reload();
      return false
    },
    numDown(event) {
      const target = event.srcElement;
      target.value = "";
      this.checkNumUp();
    },
    numUp(event) {
      const target = event.srcElement;
      const myLength = target.value.length;
      let next = target;
      if(myLength >= 1) {
        while (next = next.nextElementSibling) {
          if (next == null) break;
          if (next.tagName.toLowerCase() == "input") {
            next.focus();
            break;
          }
        }
      }
      if(myLength === 0) {
        while (next = next.previousElementSibling) {
          if (next == null) break;
          if (next.tagName.toLowerCase() == "input") {
            next.focus();
            break;
          }
        }
      }
      this.checkNumUp();
    },
    checkNumUp() {
      this.num0 = document.getElementById('num0').value;
      this.num1 = document.getElementById('num1').value;
      this.num2 = document.getElementById('num2').value;
      this.num3 = document.getElementById('num3').value;
    },
    laodingAuth() {
      const auth = JSON.parse(localStorage.getItem('auth'));
      if(auth != undefined || auth != null) {
        this.auth = auth;
      }
    }
  },
  watch: {
    'bookingInfo.serviseText': function() {
      if(this.BranchId != '' && this.bookingModal == true) {
        if(this.pickParams == 1 && this.isBookingServiceActive == false) {
          this.loadDate();
          // console.log('asd');
          setTimeout(() => {
          }, 1000);
        }
      }
      this.date = '';
      this.bookingInfo.time = '';
      this.liTimeActive = 0;
      // this.isInputActiveDate = false;
      let lengWord = this.bookingInfo.serviseText.length;
      if(lengWord != 0) {
        this.blockedDate = false;
      } else {
        this.blockedDate = true;
      }
      // console.log(this.bookingInfo);
      this.blockedTime = true;
    },
    date() {
      this.loadTimes();
      
      const local = localStorage.getItem('local');
      this.bookingInfo.date.day = moment(this.date).format("DD");
      this.bookingInfo.date.month = moment(this.date).locale(local).format("MMMM");
      this.bookingInfo.date.year = moment(this.date).format("YYYY");
      // this.isInputActiveTime = false;
      this.bookingInfo.time = '';
      this.liTimeActive = 0;
      let lengWord = this.bookingInfo.date.day.length;
      if(lengWord != 0 && this.bookingInfo.date.day != 'Invalid date') {
        this.blockedTime = false;
      } else {
        this.blockedTime = true;
      }
    },
    phoneAuth() {
      const plus = this.phoneAuth.split('');
      if(plus.length != 0) {
        for (let index = 1; index < plus.length; index++) {
          if(plus[index] == '+') {
            const phone = this.phoneAuth.replace(/.$/, '');
            this.phoneAuth = phone;
          }
        }
      }
      if(plus[0] != '+' && plus.length != 0) {
        this.phoneAuth = '+' + this.phoneAuth;
      }
    }
  },
  validations: {
    bookingInfo: {
      name: { required, minLength: minLength(2) },
      surname: { required, minLength: minLength(2) },
      phone: { required, minLength: minLength(12) },
      serviseText: {
        required,
        minLength: minLength(4),
      },
      time: { required, minLength: minLength(4) },
    },
    date: { required },
    eticketInfo: {
      serviseText: {
        required,
        minLength: minLength(4)
      },
      phone: { required, minLength: minLength(12) } 
    },
    phoneAuth: { required, minLength: minLength(12) },
    num0: { required, maxLength: maxLength(1) },
    num1: { required, maxLength: maxLength(1) },
    num2: { required, maxLength: maxLength(1) },
    num3: { required, maxLength: maxLength(1) }
  },
});