<template>
  <el-card>
    <h1 class="me-author-name">郑伟</h1>
    <div class="me-author-description">
      <span><i class="el-icon-location-outline"></i>安徽&芜湖</span>
      <span><i class="me-icon-job"></i> Java开发工程师</span>
    </div>
    <div class="me-author-tool">
      <i @click="showTool(qq)" :title="qq.title" class="me-icon-QQ"></i>
      <i @click="showTool(github)" :title="github.title" class="me-icon-github"></i>
       <i @click="showTool(resume)" :title="resume.title" class="me-icon-author"></i>
    </div>
  </el-card>

</template>

<script>
  export default {
    name: 'CardMe',
    data() {
      return {
        qq: {title: 'QQ', message: '443831225'},
        github: {
          title: 'github',
          message: '<a target="_blank" href="https://github.com/BobGod/">https://github.com/BobGod/</a>'
        },
        resume:{
         title: '个人简历(点击)',
         message: ' <p ><font color="red" font-size:20px;>微信扫一扫，获取我的微简历</font></p> </br> <img src="http://a1.qpic.cn/psc?/V11z6g7L0x6EYw/QNsgOSLzUrTyB8UN2gSlSG2OrGaJTKW05dQszp0IRaKgWT2c045RG0ANJijqQcteaPyJcn9nPQVZq8ICiGLBrg!!/c&ek=1&kp=1&pt=0&bo=AgECAQAAAAARFyA!&tl=3&vuin=443831225&tm=1590130800&sce=60-2-2&rf=0-0"/>'
        }
      }
    },
    methods: {
      showTool(tool) {
        this.$message({
          duration: 0,
          showClose: true,
          dangerouslyUseHTMLString: true,
          message: '<strong>' + tool.message + '</strong>'
        });
      }
    }
  }
</script>

<style scoped>
  .me-author-name {
    text-align: center;
    font-size: 30px;
    border-bottom: 1px solid #5FB878;
  }

  .me-author-description {
    padding: 8px 0;
  }

  .me-icon-job {
    padding-left: 16px;
  }

  .me-author-tool {
    text-align: center;
    padding-top: 10px;
  }

  .me-author-tool i {
    cursor: pointer;
    padding: 4px 10px;
    font-size: 30px;
  }
</style>
