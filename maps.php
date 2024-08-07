<?php
  $pieces = explode("/", $_SERVER['REQUEST_URI']);
  if($pieces[1] != 'uz' || $pieces[1] != 'en') {
    $lang = 'ru';
  } else if ($pieces[1] == 'uz' || $pieces[1] == 'en') {
    $lang = $pieces[1];
  }
  
  include"./components/common.php";
  include"./components/connectDB.php";
  $sql = "SELECT * FROM org WHERE id"; ///Строка с запросом (для удобство)
  $query = $connect->prepare($sql); //Подготовка запроса к выполнегию
  $query->execute([]); ///Выполниние запроса
  $array = $query->fetchAll(PDO::FETCH_ASSOC);

  switch($lang){
    case 'ru':
      $sql = "SELECT * FROM ru_list_branches WHERE id"; ///Строка с запросом (для удобство)
      $query = $connect->prepare($sql); //Подготовка запроса к выполнегию
      $query->execute([]); ///Выполниние запроса
      $arrayTime = $query->fetchAll(PDO::FETCH_ASSOC);
      break;
    case 'uz':
      $sql = "SELECT * FROM uz_list_branches WHERE id"; ///Строка с запросом (для удобство)
      $query = $connect->prepare($sql); //Подготовка запроса к выполнегию
      $query->execute([]); ///Выполниние запроса
      $arrayTime = $query->fetchAll(PDO::FETCH_ASSOC);
      break;
    case 'en':
      $sql = "SELECT * FROM en_list_branches WHERE id"; ///Строка с запросом (для удобство)
      $query = $connect->prepare($sql); //Подготовка запроса к выполнегию
      $query->execute([]); ///Выполниние запроса
      $arrayTime = $query->fetchAll(PDO::FETCH_ASSOC);
      break;
  }
?>

<!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="title" content="Elektron-navbat - Поиск услуг в организациях">
  <meta name="description" content="Данный сайт помогает вам найти услугу для онлайн регистрации на платформу | Карта">
  <meta name="keywords" content="Elektron-navbat, Elektron navbat, Поиск услуг" />
  <meta name="robots" content="All" />
  <link rel="icon" href="/img/favicon.ico">
  <title>Elektron-navbat | Карта</title>
  <link rel="stylesheet" href="/css/font.css">
  <link rel="stylesheet" href="/css/bootstrap.css">
  <link rel="stylesheet" href="/css/bootstrap-reboot.css">
  <link rel="stylesheet" href="/css/font-awesome.min.css">
  <link rel="stylesheet" href="/css/leaflet.css">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="/css/style.min.css">
</head>

<body id="body">
  <div id="maps" class="wrapper">
    <?php include "./components/menu.php"; ?>
    <div class="main">
      <?php include "./components/loader-first.php"; ?>
      <div class="content">
        <ul class="container breadcrumbs">
          <li class="breadcrumbs__item">
            <a class="breadcrumbs__link" href="<?php echo ($lang == 'ru') ? '/' : '/' . $lang . '/' ?>"><?php echo $langArray['main'] ?></a>
          </li>
          <li class="breadcrumbs__item">
            <div class="breadcrumbs__link"><?php echo $langArray['map'] ?></div>
          </li>
        </ul>
      </div>
  
      <section class="maps">
        <div class="container">
          <div class="row">
            <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 col-12 mb">
              <a href="<?php echo ($lang == 'ru') ? '/maps?orgId=all' : '/' . $lang . '/maps?orgId=all' ?>" class="box" :class="[isBoxActive == 0 ? 'boxActive' : 'box']" style="background: #417c96;"><?php echo $langArray['everybody'] ?></a>
            </div>
            <?php foreach ($array as $item) : ?>
              <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6 col-12 mb">
                <a href="<?php echo ($lang == 'ru') ? '/maps?orgId=' . $item['Id'] : '/' . $lang . '/maps?orgId=' . $item['Id'] ?>" class="box" :class="[isBoxActive == <?php echo $item['Id'] ?> ? 'boxActive' : 'box']" style="background: <?php echo $item['Background'] ?>; color: <?php echo $item['Color'] ?>;"><?php echo $item['Name'] ?></a>
              </div>
            <?php endforeach; ?>
            <div class="col-xl-12">
              <div id="map">
                <l-map style="height: 100%" :zoom="zoom" :center="center">
                  <l-tile-layer :url="url"></l-tile-layer>
                  <l-marker 
                    :lat-lng="getCoord(item.Latitude, item.Longitude)"
                    v-for="item in coordArray" :key="item.id"
                  >
                    <l-popup>
                      <div class="mapPopup">
                        <h1>{{ item.BranchName }}</h1>
                        <p>- {{ item.BranchAddress }}</p>
                        <h2><?php echo $langArray['workingHours'] ?></h2>
  
                        <table>
                          <tbody>
                            <tr>
                              <th><?php echo $langArray['monday'] ?></th>
                              <th><?php echo $langArray['tuesday'] ?></th>
                              <th><?php echo $langArray['wednesday'] ?></th>
                              <th><?php echo $langArray['thursday'] ?></th>
                              <th><?php echo $langArray['friday'] ?></th>
                              <th><?php echo $langArray['saturday'] ?></th>
                              <th><?php echo $langArray['sunday'] ?></th>
                            </tr>
                            <tr>
                              <td v-for="i in item.BranchOpeningTime" :key="i.Day">{{ i.OpenTime }}</td>
                            </tr>
                          </tbody>
                        </table>
  
                        <a @click.prevent="openOneTab(1, item)" href="" class="mapPopup__link" :style="{color: item.Color, background: item.Background}"><?php echo $langArray['homeBtnOne'] ?></a>
                        <a @click.prevent="openOneTab(2, item)" href="" class="mapPopup__link" :style="{color: item.Color, background: item.Background}"><?php echo $langArray['homeBtnTwo'] ?></a>
                      </div>
                    </l-popup>
                  </l-marker>
                </l-map>
              </div>
            </div>
          </div>
        </div>
      </section>
      <?php include "./components/loading.php"; ?>
      <transition name="fade">
        <section v-show="modal" id="modal" class="modal" style="display: none;">
          <div @click='closeModal()' class="btn-close"><i class="fa fa-times" aria-hidden="true"></i></div>
            <div class="modal-info">
  
              <!-- booking -->
              <!-- booking -->
              <transition name="fade">
                <div v-show="bookingModal" class="modal-info-three">
                  <div class="booking">
                    <div class="container">
                      <h1 class="booking__title-header"><?php echo $langArray['booking'] ?></h1>
                      <div class="booking__title-address">
                        <h2>{{ BranchName }}</h2>
                        <p>{{ BranchAddress }}</p>
                      </div>
                      <form @submit.prevent="cardPreview()" class="booking__form form">
                        <div class="form__item">
                          <p class="title"><?php echo $langArray['personalInformation'] ?></p>
                          <input v-model.trim="bookingInfo.name" class="input name" :class="$v.bookingInfo.name.$error ? 'is-invalid' : ''" type="text" placeholder="<?php echo $langArray['name'] ?>*"/>
                          <input v-model.trim="bookingInfo.surname" class="input surname" :class="$v.bookingInfo.surname.$error ? 'is-invalid' : ''" type="text" placeholder="<?php echo $langArray['surname'] ?>*"/>
                          <input v-model.trim="bookingInfo.phone" class="input phone" :class="$v.bookingInfo.phone.$error ? 'is-invalid' : ''" type="tel" placeholder="+998" readonly/>
                        </div>
                        <div class="form__item">
                          <p class="title"><?php echo $langArray['bookingData'] ?></p>
                          <!-- Service -->
                          <div @click="openServiceList(1)" class="input modal-input" :class="$v.bookingInfo.serviseText.$error ? 'is-invalid' : ''">
                            <h1 class="modal-input__title"><?php echo $langArray['service'] ?>*</h1>
                            <div class="modal-input__service">
                              <p>{{ bookingInfo.serviseText }}</p>
                              <i class="fa fa-caret-down" aria-hidden="true"></i>
                            </div>
                          </div>
                          <!-- service -->
                          <transition name="fade">
                            <div v-show="isBookingServiceActive" id="booking-form-service-list" class="form__service-list service-list">
                              <div class="service-list__header">
                                <h2><?php echo $langArray['service'] ?>*</h2>
                                <a @click.prevent="closeServiceList()" href="/" class="close-link">
                                  <i class="fa fa-times" aria-hidden="true"></i>
                                </a>
                              </div>
                              <ul id="booking-service-list" class="service-list__body">
                                <li v-for="item in service" :key="item.id" @click="liServiceActiveLink(item)" class="service-list__item" :class="{ serviceListActive: serviceId == item.ServiceId }">
                                  <i class="fa fa-dot-circle-o" aria-hidden="true"></i>
                                  <p>{{ item.ServiceName }}</p>
                                </li>
                              </ul>
                              <a href="" @click.prevent="chooseService()" class="service-list__link" :style="{color: Color, background: Background}"><?php echo $langArray['choose'] ?></a>
                            </div>
                          </transition>
                          <transition name="fade">
                            <div v-show="isBookingServiceActive" class="form__service-list-bg"></div>
                          </transition>
                          <!-- DATE -->
                          <div class="input modal-input" :class="$v.date.$error && !$v.date.required ? 'is-invalid' : ''">
                            <h1 class="modal-input__title"><?php echo $langArray['date'] ?>*</h1>
                            <vuejs-datepicker
                              calendar-class="date-calendar"
                              input-class="date-input"
                              :language="langDate"
                              :disabled-dates="disabledDates"
                              :format="customFormatter"
                              v-model.trim="date"
                              monday-first
                            ></vuejs-datepicker>
                            <i class="fa fa-caret-down" aria-hidden="true"></i>
                            <div v-if="blockedDate" class="modal-input__blocked"></div>
                          </div>
                          <!-- TIME -->
                          <div class="input modal-input" :class="$v.bookingInfo.time.$error ? 'is-invalid' : ''" @click="openTimeList()">
                            <h1 class="modal-input__title"><?php echo $langArray['time'] ?>*</h1>
                            <div class="modal-input__service">
                              <p>{{ bookingInfo.time }}</p>
                              <i class="fa fa-caret-down" aria-hidden="true"></i>
                            </div>
                            <div id="blockedTime" v-if="blockedTime" class="modal-input__blocked"></div>
                          </div>
                          <transition name="fade">
                            <div v-show="isTimeActive" id="booking-form-time-list" class="form__service-list service-list">
                              <div class="service-list__header">
                                <h2><?php echo $langArray['time'] ?>*</h2>
                                <a @click.prevent="closeTimeList()" href="/" class="close-link">
                                  <i class="fa fa-times" aria-hidden="true"></i>
                                </a>
                              </div>
                              <ul id="booking-time-list" class="service-list__body">
                                <li v-for="ite in timeAll" :key="ite.index" :class="{ serviceListActive: liTimeActive === ite.Time }" @click="liTimeActiveLink(ite.Time)" class="service-list__item">
                                  <i class="fa fa-dot-circle-o" aria-hidden="true"></i>
                                  <p>{{ ite.Time }}</p>
                                </li>
                              </ul>
                              <a @click.prevent="chooseTime()" href="" class="service-list__link" :style="{color: Color, background: Background}"><?php echo $langArray['choose'] ?></a>
                            </div>
                          </transition>
                          <transition name="fade">
                            <div v-show="isTimeActive" class="form__service-list-bg"></div>
                          </transition>
                          <!-- END TIME -->
                          
                        </div>
                        <button class="form__btn" type="submit" :style="{color: Color, background: Background}"><?php echo $langArray['next'] ?></button>
                      </form>
                      <!-- card-modal -->
                      <div v-show="cardModal" class="booking__card-modal card-modal">
                        <a href="" class="close-link" @click.prevent="closeCardPreview()">
                          <i class="fa fa-times" aria-hidden="true"></i>
                        </a>
                        <h1><?php echo $langArray['personalInformation'] ?></h1>
                        <p><?php echo $langArray['name'] ?>: {{ bookingInfo.name }}</p>
                        <p><?php echo $langArray['surname'] ?>: {{ bookingInfo.surname }}</p>
                        <!-- <p>{{ $t("email") }}: {{ bookingInfo.email }}</p> -->
                        <p><?php echo $langArray['phone'] ?>: {{ bookingInfo.phone }}</p>
                        <h2><?php echo $langArray['bookingData'] ?></h2>
                        <p><?php echo $langArray['service'] ?>: {{ bookingInfo.serviseText }}</p>
                        <p><?php echo $langArray['date'] ?>: {{ bookingInfo.date.month }} {{ bookingInfo.date.day }}, {{ bookingInfo.date.year }}</p>
                        <p><?php echo $langArray['time'] ?>: {{ bookingInfo.time }}</p>
                        <button class="card-modal__btn" @click="createdBooking()" :style="{color: Color, background: Background}"><?php echo $langArray['bookADate'] ?></button>
                      </div>
                      <div v-show="cardModalBg" class="booking__card-modal-bg"></div>
                      <!-- card-modal-end -->
                      <div v-show="cardModalEnd" class="booking__card-modal-end card-modal-end">
                        <div class="card-modal-end__content">
                          <a href="/" class="close-link" @click.prevent="closeCardModalEnd()">
                            <i class="fa fa-times" aria-hidden="true"></i>
                          </a>
                          <h1><?php echo $langArray['successfulBooking'] ?></h1>
                          <div class="card-modal-end__kod kod">
                            <span class="kod__title"><?php echo $langArray['bookingCode'] ?></span>
                            <p class="kod__number" id="booking-code" @click="copy()">{{ bookingInfo.number }}</p>
                            <div class="kod__alert" v-show="tooltipCopied">
                              <h1><?php echo $langArray['copied'] ?>!</h1>
                            </div>
                          </div>
                          <h2><?php echo $langArray['textClick'] ?></h2>
                          <p><?php echo $langArray['textPlease'] ?></p>
                          <h3><?php echo $langArray['textWe'] ?></h3>
                        </div>
                      </div>
                      <!-- alertError -->
                      <div v-show="alertError" class="booking__alertError alertError">
                        <p class="alertError__title"><?php echo $langArray['textAlready'] ?></p>
                        <a @click.prevent="closeAlertError()" href="" class="alertError__link"><?php echo $langArray['close'] ?></a>
                      </div>
                    </div>
                  </div>
                </div>
              </transition>
              
              <!-- eticket -->
              <!-- eticket -->
              <transition name="slide-fade">
                <div v-show="eticketModal" class="modal-info-two">
                  <div class="eticket">
                    <div class="container position-relative">
                      <h1 class="eticket__title-header"><?php echo $langArray['eTicket'] ?></h1>
                      <div class="eticket__title-address">
                        <h2>{{ BranchName }}</h2>
                        <p>{{ BranchAddress }}</p>
                      </div>
                      <form class="eticket__form form" @submit.prevent="createdTicket()" method="post">
                        <div @click="openServiceList(2)" class="form__service" :class="$v.eticketInfo.serviseText.$error ? 'is-invalid' : ''">
                          <h1 class="form__title-left"><?php echo $langArray['service'] ?>*</h1>
                          <div class="form__title-right">
                            <p>{{ eticketInfo.serviseText }}</p>
                            <i class="fa fa-caret-down" aria-hidden="true"></i>
                          </div>
                        </div>
                        <transition name="fade">
                          <div v-show="isEticketServiceActive" id="eticket-form-service-list" class="form__service-list service-list">
                            <div class="service-list__header">
                              <h2><?php echo $langArray['service'] ?>*</h2>
                              <a @click.prevent="closeServiceList()"  href="/" class="close-link">
                                <i class="fa fa-times" aria-hidden="true"></i>
                              </a>
                            </div>
                            <ul id="eticket-service-list" class="service-list__body">
                              <li v-for="item in service" :key="item.id" @click="liServiceActiveLink(item)" class="service-list__item" :class="{ serviceListActive: serviceId == item.ServiceId }">
                                <i class="fa fa-dot-circle-o" aria-hidden="true"></i>
                                <p>{{ item.ServiceName }}</p>
                              </li>
                            </ul>
                            <a href="" @click.prevent="chooseService()" class="service-list__link" :style="{color: Color, background: Background}"><?php echo $langArray['choose'] ?></a>
                          </div>
                        </transition>
                        <input v-model="eticketInfo.phone" class="form__phone" :class="$v.eticketInfo.phone.$error ? 'is-invalid' : ''" type="tel" placeholder="+998" readonly/>
                        <button type="submit" class="form__btn" :style="{color: Color, background: Background}"><?php echo $langArray['receive'] ?></button>
                      </form>
                      <div v-show="isActiveCreatedTicket" class="ticket">
                        <h1 class="ticket__title"><?php echo $langArray['yourTicket'] ?></h1>
                        <ul>
                          <li>
                            <h1><?php echo $langArray['number'] ?></h1>
                            <h2>{{ eticketInfo.number }}</h2>
                          </li>
                          <li>
                            <h1><?php echo $langArray['branch'] ?></h1>
                            <h2>{{ BranchName }}</h2>
                          </li>
                          <li>
                            <h1><?php echo $langArray['address'] ?></h1>
                            <h2>{{ BranchAddress }}</h2>
                          </li>
                          <li>
                            <h1><?php echo $langArray['service'] ?></h1>
                            <h2>{{ eticketInfo.serviseText }}</h2>
                          </li>
                          <li>
                            <h1><?php echo $langArray['validUntil'] ?></h1>
                            <h2>{{ eticketInfo.validUntil }}
                            </h2>
                          </li>
                        </ul>
                        <!-- <a href="" @click.prevent="deleteTicket(eticketInfo.number)" class="ticket__link"><?php echo $langArray['deleteBtnET'] ?></a>
                        <transition name="fade">
                          <div v-if="isActiveToolTip" class="ticket__tooltip">
                            <p><?php echo $langArray['deteleText'] ?></p>
                          </div>
                        </transition> -->
                      </div>
                    </div>
                  </div>
                  <transition name="fade">
                    <div v-show="isEticketServiceActive" class="service-list-bg"></div>
                  </transition>
                </div>
              </transition>

              <!-- alertError -->
              <!-- alertError -->
              <transition name="fade">
                <div v-show="alertError" class="alertError">
                  <p class="alertError__title"><?php echo $langArray['textAlready'] ?></p>
                </div>
              </transition>
              
              <!-- auth -->
              <!-- auth -->
              <transition name="fade">
                <div v-if="modalAuth" class="modal-info__auth">
                  <form v-if="modalAuthParams == 1" class="form" @submit.prevent="accountNumber()" method="post">
                    <h1 class="form__title"><?php echo $langArray['authorization'] ?></h1>
                    <div class="form__item">
                      <span><?php echo $langArray['phone'] ?></span>
                      <input v-model="phoneAuth" :class="$v.phoneAuth.$error ? 'is-invalid' : ''" type="tel" placeholder="+998"/>
                    </div>
                    <button type="submit" class="form__btn"><?php echo $langArray['authorization'] ?></button>
                  </form>
                  <form v-else-if="modalAuthParams == 2" class="form" @submit.prevent="checkNumer()" method="post">
                    <h1 class="title"><?php echo $langArray['enterCode'] ?></h1>
                    <div @keydown="numDown" @keyup="numUp" class="form__pin-code">
                      <input id="num0" type="number" maxlength="1" placeholder="0" :class="$v.num0.$error ? 'is-invalid' : ''">
                      <input id="num1" type="number" maxlength="1" placeholder="0" :class="$v.num1.$error ? 'is-invalid' : ''">
                      <input id="num2" type="number" maxlength="1" placeholder="0" :class="$v.num2.$error ? 'is-invalid' : ''">
                      <input id="num3" type="number" maxlength="1" placeholder="0" :class="$v.num3.$error ? 'is-invalid' : ''">
                    </div>
                    <button type="submit" class="form__btn"><?php echo $langArray['confirm'] ?></button>
                  </form>
                </div>
                <div v-else-if="modalTelegram" class="modal-info__telegram telegram">
                  <p class="telegram__title"><?php echo $langArray['textTelegram'] ?></p>
                  <div @click="openTelegram()" class="telegram__link" href="" target="_blank">
                    <i class="fa fa-telegram" aria-hidden="true"></i>
                  </в>
                </div>
              </transition>
            </div>
          </div>
        </section>
      </transition>
    </div>
    <?php include "./components/footer.php"; ?>
  </div>


  <script src="./js/jquery-3.4.1.min.js"></script>
  <script src="./js/bootstrap.js"></script>
  <script src="/js/vue.min.js"></script>
  <script src="/js/axios.min.js"></script>
  <script src="./js/leaflet.js"></script>
  <script src="./js/vue2-leaflet.min.js"></script>
  <script src="/js/vuejs-datepicker.min.js"></script>
  <script src="/js/moment.js"></script>
  <script src="/js/moment-with-locales.js"></script>
  <script src="/js/uz-latn.min.js"></script>
  <script src="/js/fingerprint.js"></script>
  <script type="text/javascript" src="/js/vdp_translation_ru.js"></script>
  <script src="./js/vuelidate.min.js"></script>
  <script src="./js/validators.min.js"></script>
  <script src="/js/scriptMap.js"></script>

</body>

</html>