<template>
  <div>
    <Card style="width:100%">
      <Row>
        <Col span="24">
        <h2>{{resTitle}}</h2>
        </Col>
      </Row>
      <Row>
        <Col span="24">
        <h4>作者： {{resAuthor}} &nbsp 发表时间： {{resDate}} &nbsp 来源： {{resSource}} &nbsp 回复评论： {{resCommentCount}}</h4>
        </Col>
      </Row>
    </Card>
    <Card>
      <Row>
        <Col span="24">
        <p>　　{{resContext}}
        </p>
        </Col>
      </Row>
    </Card>

  </div>
</template>
<script>
  import {
    getEssay
  } from "@/api/data";
  export default {
    props: {
      id: String,
    },
    data() {
      return {
        resContext: '',
        resAuthor: '',
        resDate: '',
        resCommentCount: '',
        resSource: ''
      }
    },
    methods: {

      handleGetEssay(id) {
        getEssay(id)
          .then(res => {
            res = res.data.data;
            this.resDate = res.resDate
            var dt = new Date(this.resDate);
            var date = [
              [dt.getFullYear(), dt.getMonth() + 1, dt.getDate()].join('-'),
              [dt.getHours(), dt.getMinutes(), dt.getSeconds()].join(':')
            ].join(' ').replace(/(?=\b\d\b)/g, '0'); // 正则补零
            this.resDate = date
            this.resContext = res.context
            this.resAuthor = res.author
            this.resCommentCount = res.resCommentCount
            this.resSource = res.resSource
            this.resTitle = res.title
           

          })
          .catch(err => {
            console.log(err);
          });
      }
    },
    mounted() {
      this.handleGetEssay(this.id)

    }
  }

</script>
