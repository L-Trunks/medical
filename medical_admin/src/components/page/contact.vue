<template>
  <div>
    <v-pageTitle vtitle="反馈信息"></v-pageTitle>
    <div class="clear"></div>
    <el-table
      :data="contactList"
      style="width: 100%"
      :default-sort="{ prop: 'register_date', order: 'descending' }"
      v-loading="listLoading"
    >
      <el-table-column
        fixed
        prop="datetime"
        label="反馈时间"
        sortable
        width="160"
      >
      </el-table-column>
      <el-table-column prop="v_name" label="姓名" sortable width="120">
      </el-table-column>
      <el-table-column prop="headimgurl" width="130" label="头像">
        <template slot-scope="scope">
          <img v-bind:src="scope.row.headimgurl" style="width: 100%" />
        </template>
      </el-table-column>

      <el-table-column prop="content" label="反馈内容"> </el-table-column>
    </el-table>
    <!-- 分页 -->
    <el-col :span="24" class="toolbar block">
      <el-pagination
        @size-change="handleSizeChange"
        @current-change="handleCurrentChange"
        :page-sizes="[10, 20, 50, total]"
        :page-size="page.pageSize"
        layout="total, sizes, prev, pager, next, jumper"
        :total="total"
      >
      </el-pagination>
    </el-col>
  </div>
</template>
<script>
import vPageTitle from "../common/pageTitle";
export default {
  data() {
    return {
      contactList: [],
      listLoading: false,
      total: 0,
      page: {
        pageSize: 10,
        pageNum: 1,
      },
    };
  },
  mounted() {
    //初始化
    this.userSearch();
  },
  methods: {
    // 查询所有用户
    userSearch() {
      this.listLoading = true;
      var qs = require("qs");
      console.log(qs.stringify(this.page));
      //读取商品列表
      this.$post(
        "http://www.bjytzh.cn/jxc/showContact.thtml",
        qs.stringify(this.page)
      ).then((res) => {
        console.log(res);
        this.contactList = res[0];
        this.total = res[1].count;
        this.listLoading = false;
      });
    },
    //点击分页
    handleCurrentChange(val) {
      this.page.pageNum = val;
      this.userSearch();
    },
    handleSizeChange(val) {
      this.page.pageSize = val;
      this.userSearch();
    },
  },

  components: {
    vPageTitle,
  },
};
</script>