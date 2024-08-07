// "use strict";
new Vue({
  el: '#profil',
  data: {
    local: '',
    dropLocal: [],
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
    // api: 'http://api-site',
    api: 'https://api.elektron-navbat.uz',
    // api: 'http://192.168.0.100:4000',
    eticketInfos: [],
    bookingInfos: [],
    activeDelete: false,
    show: 0,
    loading: false,
    loaderFirst: true,
    isActiveToolTip: false,
    isActiveToolTipId: '',
    ticketLength: 0,
    date: '',
    token: '',
    profil: []
  },
  beforeMount() {
    const profil = JSON.parse(sessionStorage.getItem('info'));
    if(profil != null || profil != undefined) {
      if(profil != '') {
        this.token = profil.Token;
        this.profil = profil;
      } else {
        const url = window.location.href;
        const re = url.split('/');
        window.location = `${re[0]}//${re[2]}`;
      }
    } else {
      const url = window.location.href;
      const re = url.split('/');
      window.location = `${re[0]}//${re[2]}`;
    }
    // const url = window.location.href;
    // const re = url.split('?');
    // if(re.length === 1) {
    //   window.location = window.location.href + '?lang=' + localStorage.local;
    // }
    this.checkLocal();
    this.loadingLocal();
    // if(localStorage.eticket === null || localStorage.eticket === undefined) {
    //   localStorage.setItem('eticket', JSON.stringify([]));
    // }
    // if(localStorage.booking === null || localStorage.booking === undefined) {
    //   localStorage.setItem('booking', JSON.stringify([]));
    // }
    
    const infoAuth = JSON.parse(sessionStorage.getItem('info'));
    this.profil = infoAuth.Info;
    this.profil.Token = infoAuth.Token;
  },
  async mounted() {
    // this.token = sessionStorage.getItem('token');
    await this.loadingProfil();
    // await this.loadingInfoStoreEticket();
    
    // this.lengthTicket();

    // this.bookingInfo.name = infoAuth.Info.FirstName;
    // this.bookingInfo.surname = infoAuth.Info.LastName; 
    // this.bookingInfo.phone = infoAuth.Info.Phone;
    // this.eticketInfo.phone = infoAuth.Info.Phone;
    // console.log(moment('20221107').format("DD/MM/YYYY"));

  },
  methods: {
    loadingLocal() {
      const local = localStorage.local;
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
      if(id == 'uz' || id == 'en') {
        window.location = re[0] + '//' + re[2] + '/'+ id + '/'+ re[3];
      } else if(id == 'ru') {
        window.location = re[0] + '//' + re[2] + '/'+ re[4];
        this.local = 'ru';
      }
    },
    checkLocal() {
      const url = window.location.href;
      const re = url.split('/');
      // console.log(re);
      if(re[3] == 'ru') {
        localStorage.setItem('local', 'ru');
      } else if(re[3] == 'uz' || re[3] == 'en') {
        localStorage.setItem('local', re[3]);
      }
    },
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
                  this.bookingInfos = response.data.Booking;
                }
                if(response.data.eTicket != '') {
                  for (let index = 0; index < response.data.eTicket.length; index++) {
                    info.push(response.data.eTicket[index]);
                  }
                  this.eticketInfos = response.data.eTicket;
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
    loadingInfoStoreEticket() {
      this.loading = true;
      const eticket = JSON.parse(localStorage.getItem('eticket'));
      const booking = JSON.parse(localStorage.getItem('booking'));
      for (let item of eticket) {
        axios.get(`${item.api}/GetTicketStatus?branchId=${item.branchId}&ticketId=${item.ticketId}`)
          .then((response) => {
            console.log(response.data);
            // if(response.data.Status === 0 || response.data.Status === 3) {
            //   // this.loadingDeleteTicket(item.number, item.deviceId, item.deviceType, item.api);
            // } else {
            //   this.eticketInfos.push({
            //     address: item.address,
            //     api: item.api,
            //     branch: item.branch,
            //     branchId: item.branchId,
            //     day: item.day,
            //     deviceId: item.deviceId,
            //     deviceType: item.deviceType,
            //     month: item.month,
            //     number: item.number,
            //     phone: item.phone,
            //     serviseText: item.serviseText,
            //     ticketId: item.ticketId,
            //     validUntil: item.validUntil,
            //     year: item.year,
            //     status: response.data.Status
            //   });
            // }
          })
          .catch((e) => { console.log(e); });
      }
      for (let items of booking) {
        axios.get(`${items.api}/GetBookingDetails?bookingCode=${items.number}`)
          .then((response) => {
            // console.log(response.data);
            if(response.data.Status === 0 || response.data.Status === 3) {
              this.deleteBooking(items.number, items.startDate, items.api, items.clientId);
            } else {
              this.bookingInfos.push({
                address: items.address,
                api: items.api,
                branch: items.branch,
                branchId: items.branchId,
                day: items.day,
                month: items.month,
                name: items.name,
                number: items.number,
                phone: items.phone,
                serviseText: items.serviseText,
                startDate: items.startDate,
                surname: items.surname,
                time: items.time,
                year: items.year,
                status: response.data.Status
              });
            }
          })
          .catch((e) => { console.log(e); });
      }
      setTimeout(() => {
        this.loading = false;
      }, 1000);
      
      this.loaderFirst = false
    },
    // loadingDeleteTicket(number, deviceId, deviceType, api) {
    //   const delTicket = {
    //     number: number,
    //     deviceId: deviceId,
    //     token: '',
    //     deviceType: deviceType
    //   }
    //   axios
    //     .get(`${api}/DeleteTicket`, delTicket)
    //     .then((response) => {
    //       this.isActiveToolTip = response.data.Success;
    //       const infoLocalStorge = JSON.parse(localStorage.eticket);
    //       const info = [];
    //       for(let i = 0; i < infoLocalStorge.length; i++) {
    //         if (infoLocalStorge[i].number != number) {
    //           info.push(infoLocalStorge[i]);
    //         }
    //       }
    //       localStorage.eticket = JSON.stringify(info);
    //       setTimeout(()=> {
    //         window.location.reload();
    //         this.isActiveToolTip = false;
    //       }, 3000)
    //     })
    //     .catch((error) => console.log(error));
    // },
    deleteTicket(id) {
    // deleteTicket(number, deviceId, deviceType, api) {
      // this.loading = true;
      // const delTicket = {
      //   number: number,
      //   deviceId: deviceId,
      //   token: '',
      //   deviceType: deviceType
      // }
      this.isActiveToolTipId = id;
      // this.isActiveToolTip = true;
      axios
        .get(`${this.api}/delTicket?Id=${id}`)
        .then((response) => {
          if(response.data.msg == true) {
            this.isActiveToolTipId = 0;
            window.location.reload();
          }
          // this.isActiveToolTip = response.data.Success;

        })
        .catch((error) => console.log(error));
    },
    // deleteTicket(number, deviceId, deviceType, api) {
    //   // this.loading = true;
    //   const delTicket = {
    //     number: number,
    //     deviceId: deviceId,
    //     token: '',
    //     deviceType: deviceType
    //   }
    //   axios
    //     .get(`${api}/DeleteTicket`, delTicket)
    //     .then((response) => {
    //       this.isActiveToolTip = response.data.Success;

    //       this.isActiveToolTip = true;
    //       const infoLocalStorge = JSON.parse(localStorage.getItem('eticket'));
    //       const info = [];
    //       for(let i = 0; i < infoLocalStorge.length; i++) {
    //         if (infoLocalStorge[i].number != number) {
    //           info.push(infoLocalStorge[i]);
    //         }
    //       }
    //       // this.isActiveToolTip = true;
    //       localStorage.setItem('eticket', JSON.stringify(info));
    //       // localStorage.eticket = JSON.stringify(info);
    //       setTimeout(()=> {
    //         window.location.reload();
    //         this.isActiveToolTip = false;
    //       }, 3000)
    //       // if(this.isActiveToolTip) {
    //       // }

    //       // if(this.status === 3) {
    //       //   this.isActiveToolTip = true;
    //       //   const infoLocalStorge = JSON.parse(localStorage.getItem('eticket'));
    //       //   const info = [];
    //       //   for(let i = 0; i < infoLocalStorge.length; i++) {
    //       //     if (infoLocalStorge[i].number != number) {
    //       //       info.push(infoLocalStorge[i]);
    //       //     }
    //       //   }
    //       //   // this.isActiveToolTip = true;
    //       //   localStorage.setItem(JSON.stringify(info));
    //       //   // localStorage.eticket = JSON.stringify(info);
    //       //   setTimeout(()=> {
    //       //     this.loadingInfoStoreEticket();
    //       //     this.isActiveToolTip = false;
    //       //   }, 3000)
    //       // } else if(this.isActiveToolTip) {
    //       //   this.isActiveToolTip = true;
    //       //   const infoLocalStorge = JSON.parse(localStorage.setItem('eticket'));
    //       //   const info = [];
    //       //   for(let i = 0; i < infoLocalStorge.length; i++) {
    //       //     if (infoLocalStorge[i].number != number) {
    //       //       info.push(infoLocalStorge[i]);
    //       //     }
    //       //   }
    //       //   // this.isActiveToolTip = true;
    //       //   localStorage.getItem(JSON.stringify(info));
    //       //   // localStorage.eticket = JSON.stringify(info);
    //       //   setTimeout(()=> {
    //       //     this.loadingInfoStoreEticket();
    //       //     this.isActiveToolTip = false;
    //       //   }, 3000)
    //       // }
    //       // this.loading = false;
    //     })
    //     .catch((error) => console.log(error));
    // },
    // loadingInfoStoreBooking() {
    //   localStorage.getItem('booking')
    // },
    // deleteBooking(number, startDate, api, clientId) {
    //   this.loading = true;
    //   const delBooking = {
    //     bookingCode: number,
    //     clientId: clientId,
    //     languageShortId: localStorage.local,
    //     startDate: startDate
    //   }
    //   axios
    //     .post(`${api}/DeleteBooking`, delBooking)
    //     .then((response) => {
    //       const code = response.data.DeleteBookingResult.Code;
    //       if(code == 0) {
    //         this.loading = false;
    //         this.isActiveToolTip = true;
    //         const infolocalStorge = JSON.parse(localStorage.booking);
    //         const info = [];
    //         for(let i = 0; i < infolocalStorge.length; i++) {
    //           if (infolocalStorge[i].number != number) {
    //             info.push(infolocalStorge[i]);
    //           }
    //         }
    //         localStorage.booking = JSON.stringify(info);
    //         setTimeout(()=> {
    //           window.location.reload();
    //           this.isActiveToolTip = false;
    //         }, 3000)
    //       }
    //     })
    //     .catch((error) => console.log(error));
    // },
    openEticket(number) {
      // console.log(number.Dates);
      // const validUntil = moment(tomorrow).locale(local).format('MMMM D, YYYY, HH:mm:ss');
      // console.log(validUntil);
      
      // const today = new Date()
      // const tomorrow = new Date(today.setDate(today.getDate() + 1))
      // console.log('2022-11-14' + 1);
      var d = new Date(number.Dates);
      d.setDate(d.getDate() + 1);
      const local = localStorage.local;
      const validUntil = moment(d).locale(local).format('MMMM D, YYYY, ');
      this.date = validUntil + '00:00:00';
      // console.log(validUntil + '00:00:00');
      if (this.show != number.Id) {
        this.show = number.Id;
      }
      else {
        this.show = 0;
      }
    },
    // lengthTicket() {
    //   const eticket = JSON.parse(localStorage.getItem('eticket'));
    //   const booking = JSON.parse(localStorage.getItem('booking'));
    //   this.ticketLength = eticket.length + booking.length || 0;
    // }
  }
});