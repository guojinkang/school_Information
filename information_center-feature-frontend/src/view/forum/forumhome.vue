<template>
  <div>
    <Table :columns="typelist" :data="singleType" @on-row-click="handleClick"></Table>
  </div>
</template>
<script>
import { getLists } from "@/api/data";
export default {
  props: {
    typeName: String
  },
  watch: {
    typeName: function(val, oldVal) {
      this.handlegetLists(this.typeName);
    }
  },
  data() {
    return {
      singleType: [],
      typelist: [
        {
          title: "评论",
          key: "resCommentCount"
        },
        {
          title: "职位",
          key: "title"
        },
        {
          title: "公司名称",
          key: "author"
        },
        {
          title: "时间",
          key: "resDate"
        }
      ]
    };
  },
  methods: {
    handlegetLists(typeName) {
      return new Promise((resolve, reject) => {
        getLists(typeName)
          .then(res => {
            res = res.data.data[0];
            this.singleType = res.resourcePos;
            resolve();
          })
          .catch(err => {
            console.log(err);
            reject(err);
          });
      });
    },
    handleClick(value,index){
      let id = value.resId;
      let type = this.typeName;
      this.$router.push({path:"/forum/content/"+type+"/"+id})
    }
  },
  mounted() {
    this.handlegetLists(this.typeName);
  }
};
</script>
