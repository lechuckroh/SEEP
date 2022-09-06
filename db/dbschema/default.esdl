module default {
    scalar type Category extending enum<Lunch, Overtime, Team, Other>;

    type Usage {
        # 사용 분류
        required property category -> Category;
        # 사용 금액
        required property amount -> int32;
        # 점심값 모아쓰기 일 수
        required property days -> int16 {
            default := 1;
        }
        # 사용처 설명
        property description -> str;
        # 사용일
        required property used_at -> cal::local_date;
        # 같이 사용한 동료
        multi link members -> Member;
    }

    type Member {
        required property name -> str;
    }
}
