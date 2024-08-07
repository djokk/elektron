<header class="container-fluid">
  <nav class="nav">
    <ul class="logo">
      <li>
        <a href="<?php echo ($lang == 'ru') ? '/': '/' . $lang ?>" class="logo__link">
          <img src="../img/favicon.ico" alt="">
          <span>
            elektron navbat
          </span>
        </a>
      </li>
    </ul>
    <ul class="nav-menu">
      <li>
        <a href="<?php echo ($lang == 'ru') ? '/' : '/' . $lang ?>" class="nav-menu__link"><?php echo $langArray['main'] ?></a>
      </li>
      <li>
        <a href="<?php echo ($lang == 'ru') ? '/maps?orgId=all' : '/' . $lang . '/maps?orgId=all' ?>" class="nav-menu__link"><?php echo $langArray['map'] ?></a>
      </li>
      <li>
        <a v-if="this.token != ''" href="<?php echo ($lang == 'ru') ? '/profil' : '/' . $lang . '/profil' ?>" class="nav-menu__link">
          <?php echo $langArray['profile'] ?>
          <div class="icon">
            <i class="fa fa-user-o" aria-hidden="true"></i>
            <div class="icon-number">
              <span>{{ ticketLength }}</span>
            </div>
          </div>
        </a>
      </li>
      <li class="dropdown dropdown-hover">
        <div class="nav-menu__link">
          {{ local.flag.text }}
          <img class="img-lang" :src="local.flag.imgLink" alt="">
        </div>
        <div class="dropdown-content">
          <a v-for="item in dropLocal" :key="item.index" @click.prevent="changeLocal(item.text)" class="dropdown-content__link" href="">
            {{ item.text }}
            <img class="img-lang" :src="item.imgLink" alt="">
          </a>
          <!-- <a class="dropdown-content__link" href="?lang=uz">
            UZ
            <img class="img-lang" src="../img/uzbekistan.png" alt="">
          </a> -->
          <!-- <a href="">
            <img class="img-lang" src="../img/russia.png" alt="">
          </a> -->
        </div>
      </li>
    </ul>
  </nav>
</header>