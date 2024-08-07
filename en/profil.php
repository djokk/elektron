<?php
  $pieces = explode("/", $_SERVER['REQUEST_URI']);
  if($pieces[1] != 'uz' || $pieces[1] != 'en') {
    $lang = 'ru';
  } else if ($pieces[1] == 'uz' || $pieces[1] == 'en') {
    $lang = 'uz';
  }
  
  // print_r($pieces);/
  include"../components/common.php";
?>

<!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="title" content="Elektron-navbat - Поиск услуг в организациях">
  <meta name="discription" content="Данный сайт помогает вам найти услугу для онлайн регистрации на платформу">
  <meta name="keywords" content="Elektron-navbat, Elektron navbat, Поиск услуг" />
  <link rel="icon" href="/img/favicon.ico">
  <title>Elektron-navbat | Профиль</title>
  <link rel="stylesheet" href="/css/font.css">
  <link rel="stylesheet" href="/css/bootstrap.css">
  <link rel="stylesheet" href="/css/bootstrap-reboot.css">
  <link rel="stylesheet" href="/css/font-awesome.min.css">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="/css/style.min.css">
</head>

<body>
  <div id="profil" class="wrapper">
    <?php include "../components/menu.php"; ?>
    <div class="main">
      <?php include "../components/loader-first.php"; ?>
      <div class="content">
        <ul class="container breadcrumbs">
          <li class="breadcrumbs__item">
            <a class="breadcrumbs__link" href="<?php echo ($lang == 'ru') ? '/' : '/' . $lang . '/' ?>"><?php echo $langArray['main'] ?></a>
          </li>
          <li class="breadcrumbs__item">
            <div class="breadcrumbs__link"><?php echo $array['Name'] ?></div>
          </li>
        </ul>
      </div>
    
      <section class="profil">
        <div class="container">
          <h1 class="profil__title"><?php echo $langArray['prOne'] ?></h1>
          <div class="profil__list">
            <p v-if="eticketInfos.length === 0"><?php echo $langArray['empty'] ?></p>
            <div v-else class="list" v-for="item in eticketInfos" :key="item.index">
              <div class="list__text" @click="openEticket(item)">
                <h2 class="title"><?php echo $langArray['yourTicket'] ?>: {{ item.Ticket }}</h2>
                <div class="status">
                  <p v-if="item.status === 0"><?php echo $langArray['statusNo'] ?></p>
                  <p v-else-if="item.status === 1"><?php echo $langArray['statusYes'] ?></p>
                  <p v-else-if="item.status === 2"><?php echo $langArray['statusСalled'] ?></p>
                  <p v-else-if="item.status === 3"><?php echo $langArray['statusСlosed'] ?></p>
                </div>
                <i aria-hidden="true" class="fa fa-chevron-right"></i>
              </div>
              <div v-if="show === item.Id" class="list__content">
                <!-- <div class="status">
                  <h1 class="title"><?php echo $langArray['yourTicket'] ?></h1>
                  <p v-if="item.status === 0"><?php echo $langArray['statusNo'] ?></p>
                  <p v-else-if="item.status === 1"><?php echo $langArray['statusYes'] ?></p>
                  <p v-else-if="item.status === 2"><?php echo $langArray['statusСalled'] ?></p>
                  <p v-else-if="item.status === 3"><?php echo $langArray['statusСlosed'] ?></p>
                </div> -->
                <ul>
                  <li>
                    <h1><?php echo $langArray['number'] ?></h1>
                    <h2>{{ item.Ticket }}</h2>
                  </li>
                  <li>
                    <h1><?php echo $langArray['branch'] ?></h1>
                    <h2>{{ item.Branch }}</h2>
                  </li>
                  <li>
                    <h1><?php echo $langArray['address'] ?></h1>
                    <h2>{{ item.Adress }}</h2>
                  </li>
                  <li>
                    <h1><?php echo $langArray['service'] ?></h1>
                    <h2>{{ item.Service }}</h2>
                  </li>
                  <li>              
                    <h1><?php echo $langArray['validUntil'] ?></h1>
                    <h2>{{ date }}</h2>
                    <!-- <h2>{{ item.validUntil }}</h2> -->
                  </li>
                </ul>
                <a @click.prevent="deleteTicket(item.Id)" href="" class="list__link"><?php echo $langArray['deleteBtnET'] ?></a>
              </div>
              <transition name="fade">
                <div v-if="isActiveToolTipId == item.Id" class="list__tooltip">
                  <p><?php echo $langArray['deteleText'] ?></p>
                </div>
              </transition>
            </div>
          </div>
          <h2 class="profil__title"><?php echo $langArray['prTwo'] ?></h2>
          <div class="profil__list">
            <p v-if="bookingInfos.length === 0"><?php echo $langArray['empty'] ?></p>
            <div v-else class="list" v-for="item in bookingInfos" :key="item.index">
              <div class="list__text" @click="openEticket(item)">
                <h2 class="title"><?php echo $langArray['yourTicket'] ?>: {{ item.BookingCode }}</h2>
                <div class="status">
                  <p v-if="item.status === 0"><?php echo $langArray['statusNo'] ?></p>
                  <p v-else-if="item.status === 1"><?php echo $langArray['statusYes'] ?></p>
                  <p v-else-if="item.status === 2"><?php echo $langArray['statusСalled'] ?></p>
                  <p v-else-if="item.status === 3"><?php echo $langArray['statusСlosed'] ?></p>
                </div>
                <i aria-hidden="true" class="fa fa-chevron-right"></i>
              </div>
              <div v-if="show === item.Id" class="list__content">
                <!-- <div class="status">
                  <h1 class="title"><?php echo $langArray['yourTicket'] ?></h1>
                  <p v-if="item.status === 0"><?php echo $langArray['statusNo'] ?></p>
                  <p v-else-if="item.status === 1"><?php echo $langArray['statusYes'] ?></p>
                  <p v-else-if="item.status === 2"><?php echo $langArray['statusСalled'] ?></p>
                  <p v-else-if="item.status === 3"><?php echo $langArray['statusСlosed'] ?></p>
                </div> -->
                <ul>
                  <li>
                    <h1><?php echo $langArray['number'] ?></h1>
                    <h2>{{ item.BookingCode }}</h2>
                  </li>
                  <li>
                    <h1><?php echo $langArray['branch'] ?></h1>
                    <h2>{{ item.Branch }}</h2>
                  </li>
                  <li>
                    <h1><?php echo $langArray['address'] ?></h1>
                    <h2>{{ item.Adress }}</h2>
                  </li>
                  <li>
                    <h1><?php echo $langArray['service'] ?></h1>
                    <h2>{{ item.Service }}</h2>
                  </li>
                  <li>              
                    <h1><?php echo $langArray['validUntil'] ?></h1>
                    <h2>{{ moment(item.BookingDate).format("DD/MM/YYYY") }} , {{ item.BookingTime }}</h2>
                    <!-- <h2>{{ item.BookingDate | moment("DD/MM/YYYY") }} , {{ item.BookingTime }}</h2> -->
                    <!-- <h2>{{ item.day }}/{{ item.month }}/{{ item.year }}, {{ item.BookingTime }}</h2> -->
                  </li>
                </ul>
                <a @click.prevent="deleteTicket(item.Id)" href="" class="list__link"><?php echo $langArray['deleteBtnET'] ?></a>
              </div>
              <transition name="fade">
                <div v-show="isActiveToolTip" class="list__tooltip">
                  <p><?php echo $langArray['deteleText'] ?></p>
                </div>
              </transition>
            </div>
          </div>
        </div>
      </section>
      <?php include "../components/loading.php"; ?>
    </div>
    <?php include "../components/footer.php"; ?>
  </div>

    
  <script src="/js/jquery-3.4.1.min.js"></script>
  <script src="/js/bootstrap.js"></script>
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.6.14/vue.min.js"></script> -->
  <script src="/js/vue.min.js"></script>
  <script src="/js/axios.min.js"></script>
  <script src="/js/moment.js"></script>
  <script src="/js/scriptProfil.js"></script>

</body>

</html>