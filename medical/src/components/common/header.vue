<template>
    <div class="header">
        <div class="header-content">
            <el-row :gutter="10">
                <el-col class="logo-box hidden-xs-only " :xs="12" :sm="8" :md="8" :lg="8">
                    <img class="logo" src="../../../static/img/logo.png" alt="">
                </el-col>
                <el-col class="logo-iconfont hidden-sm-and-up"  :xs="2" :sm="8" :md="8" :lg="8">
                    <div v-if="show">
                        <i class="el-icon-close" @click="dll"></i>
                    </div>
                    <div v-else>
                        <i class="iconfont icon-caidan" @click="dll"></i>
                    </div>
                    
                </el-col>   
                <el-col :xs="12" :sm="8" :md="8" :lg="8">
                    <div class="search-box">
                        <el-input
                        placeholder="请输入内容"
                        prefix-icon="el-icon-search"
                        @keyup.enter.native="search"
                        v-model="searchValue">
                        </el-input>
                    </div>
                </el-col>
                <el-col class="set-box" :xs="10" :sm="8" :md="8" :lg="8">
                    <span @click="chatList">
                        <el-badge v-if="chatWacth" class="item">
                            <i class="el-icon-bell"></i>
                        </el-badge>
                        <el-badge v-else is-dot class="item">
                            <i class="el-icon-bell"></i>
                        </el-badge>
                    </span>
                    
                    <span>
                        <el-dropdown trigger="click" menu-align="start">
                            <i class="iconfont icon-shezhi"></i>
                           
                            <el-dropdown-menu slot="dropdown">
                                <el-dropdown-item>
                                    <router-link class="a" to="/medical/setting">
                                        <div class="setting-div">
                                            <i class="iconfont icon-shezhi"></i>
                                            <span class="setting-string"> 设置</span>
                                        </div>
                                    </router-link>
                                </el-dropdown-item>
                               
                                <el-dropdown-item divided>
                                    <div class="setting-div" @click="login">
                                        <i class="iconfont icon-084tuichu"></i>
                                        <span>
                                            <span class="setting-string" v-if="loginState">退出</span>    
                                        
                                            <span class="setting-string" v-else >登录</span>    
                                        </span>
                                    </div>
                                    
                                </el-dropdown-item>
                                
                            </el-dropdown-menu>
                        </el-dropdown>
                    </span>
                    
                    
                </el-col>
            </el-row>
        </div>
       
    </div>
</template>
<script>
    import store from '../vuex/store'
    export default {
        data() {
            return {
                name: 'header',
                searchValue:'',
                face:'../../../static/img/user2.png',
                show:false,
                loginState:false,
                chatWacth:true
            }
        },
        computed:{
            myValue() {
                return this.$store.state.show
            }
        },
        mounted(){
            this.init()
        },
        methods:{
            init(){
                let user = this.getCookie('userType');
                if(user != null){
                    this.loginState = true
                }else{
                    this.loginState = false
                }
                var qs = require('qs');
                let info = {};
                info.username = this.getCookie('username');
                this.$post('http://localhost:4000/getState',qs.stringify(info)).then(res => {
                    console.log(res[0].count)
                    
                    if(res[0].count > 0){
                        this.chatWacth = false;
                        
                    }else{
                        this.chatWacth = true;
                    }
                    console.log(this.chatWacth)
                    
                    
                    
                });
            },
            chatList(){
                this.$router.push("/medical/chatList");
            },
            blog(){
            },
            login(){
                this.$router.push("/medical/login");
            },
            dll(){
                if(store.state.show){
                    store.commit('hide');
                    this.show = false
                }else{
                    store.commit('show');
                    this.show = true
                }
                
            },
            
            search: function (ev) {
                
                this.$router.push({name:'search',params:{info:this.searchValue}});    
                
            }
            
        },
        store,
        watch: {
            myValue: function(newVal) {
                
                if(store.state.show){
                    this.show = true
                }else{
                    this.show = false
                }
            }
        }
    }
</script>
<style scoped>
.hidden-sm-and-up{
    cursor: pointer;
}
.header{
    width:100%;
    background: #32BA58;
}
.header .header-content{
    max-width:960px;
    margin: 0 auto;
    padding: 0 10px;
}
.header .header-content .logo-box{
    text-align: left;
}
.header .header-content .logo{
    width: 40px;
    padding: 5px 0px;
}
.logo-iconfont .iconfont,.logo-iconfont .el-icon-close{
    font-size: 1.2rem;
    color: #fff;
    line-height: 48px;
}
.header .header-content .set-box{
    text-align: right;
    padding-top: 10px;
}
.header .header-content .set-box span{
    margin: 0 10px;
    color: #fff;
    cursor: pointer;

}
.header .header-content .set-box span i{
    font-size: 1.5rem;
    color: #fff;
}
.header .header-content .set-box span img{
    width: 30px;
    height: 30px;
    border-radius: 50%;
}
.header .header-content .set-box span .a{
    color: #666;
}
</style>