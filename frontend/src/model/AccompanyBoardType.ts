//동행게시글 등록타입
export interface CreateArticle {
  userId: number;
  scheduleId: number;
  title: string;
  description: string;
}

export interface CreateArticleWithId extends CreateArticle {
  id: number; 
}

export interface CreateArticleApiResponse {
  success: boolean;
  response: CreateArticleWithId;
  error: Error | null;
}


//동행게시글 전체타입
export interface Article {
  id: number;
  userId: number;
  scheduleId: number;
  title: string;
  profileImage: string; 
  nickname: string;
  accompanyDate: string;
}

export interface ArticleApiResponse {
  success: boolean;
  response: {
    articles: Article[];
  };
  error: Error  | null;
}


//동행게시글 상세 타입
  export interface ArticleDetail {
    id: number;     
    userId: number; 
    scheduleId: number; 
    title: string;  
    description: string;
    profileImage: string; 
    nickname: string;
    accompanyDate:string;
  }

  export  interface ArticleDetailApiResponse {
    success: boolean;
    response: ArticleDetail;
    error: null | Error; 
  }

//동행게시글 댓글
  export interface Comment{
    id:number;
    userId:number;
    accompanyBoardArticleId:number;
    content:string;
  }

  export  interface CommentApiResponse {
    success: boolean;
    response: Comment;
    error: null | Error; 
  }
//댓글등록
 export interface CreateCommentRequest {
    userId: number;
    accompanyBoardArticleId: number;
    content: string;
  }
  
 export interface CreateCommentResponse {
    success: boolean;
    response: {
      id: number;
      userId: number;
      accompanyBoardArticleId: number;
      content: string;
    };
    error: null | string;
  }


  // 마이페이지 동행게시글 

  export interface UserArticle {
    id: number;
    userId: number;
    scheduleId: number;
    title: string;
    description: string; 
    createdDate : string;
    commentCount: number;
    imageUrl: string;
    address: string;
  }
  
  export interface UserArticleApiResponse {
    success: boolean;
    response: {
      articles: UserArticle[];
      currentPage: number;
      hasNextPage: boolean;
    };
    error: Error  | null;
  }
  