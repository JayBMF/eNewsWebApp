<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>

<html>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>

    <link href="favicon.ico" type="image/x-icon" rel="shortcut icon" />
    <meta charset="UTF-8">
    <title>Báo Điện Tử</title>

    <style>
        *,
        ::after,
        ::before {
            box-sizing: border-box;
        }
        html {
            -webkit-text-size-adjust: 100%;
            -moz-text-size-adjust: 100%;
            text-size-adjust: 100%;
        }
        body {
            margin: 0;
            padding: 0;
            font-family: "Roboto", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            font-size: 14px;
            line-height: 20px;
            font-weight: 400;
            overflow-x: hidden;
            color: #4d4d4d;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        body.no-scroll {
            overflow: hidden;
        }
        @media only screen and (max-width: 1199px) {
            body.no-scroll {
                overflow-x: auto;
            }
        }
        @media only screen and (max-width: 1199px) {
            body {
                overflow: visible;
            }
        }
        button,
        input,
        optgroup,
        select,
        textarea {
            margin: 0;
            font-family: inherit;
            font-size: inherit;
            line-height: inherit;
        }
        a {
            color: #222;
            text-decoration: none;
        }
        a:focus,
        a:hover,
        a:active {
            outline: 0;
            color: #06c;
        }
        img {
            max-width: 100%;
            height: auto;
        }
        .container {
            width: 1158px;
            padding: 0 15px;
            margin: 0 auto;
        }
        .bg-wrap {
            position: relative;
            z-index: 0;
        }
        .bg-wrap::before {
            content: "";
            position: absolute;
            top: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 100vw;
            height: 100%;
            min-width: 1158px;
            display: block;
            z-index: -1;
        }
        .flex-jcb {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .flex-jcc {
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .header {
            padding-top: 16px;
            padding-bottom: 13px;
            z-index: 10;
        }
        .header::before {
            background: #fff none;
        }
        .header-logo {
            margin: 0;
        }
        .header-logo a {
            line-height: 0;
            display: inline-block;
        }
        .header-logo a svg,
        .header-logo a img {
            width: auto;
        }
        .header-logo.dtnewyear a {
            max-height: 40px;
        }
        .header-logo.dtnewyear svg,
        .header-logo.dtnewyear img {
            height: 54px;
            position: relative;
            top: -16px;
        }
        .header-account {
            background: transparent none;
            border: 0;
            padding: 0;
            white-space: nowrap;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            outline: 0;
            color: gray;
            cursor: pointer;
            font-size: 14px;
            font-weight: 500;
        }
        .header-account svg {
            margin: 0 0 0 9px;
            stroke: #4d4d4d;
        }
        .international {
            height: 37px;
            padding: 4px 12px 4px 15px;
            border: 1px solid #ccc;
            border-radius: 18px;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            margin: 0 30px 0 0;
            font-weight: 600;
            line-height: 1;
        }
        .international img {
            margin: 0 8px 0 0;
            border-radius: 50%;
            overflow: hidden;
            width: 26px;
            height: 26px;
        }
        .weather {
            white-space: nowrap;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 14px;
            line-height: 18px;
        }
        .weather::after {
            content: "";
            width: 0;
            height: 24px;
            position: relative;
            border-left: 1px solid #ccc;
            display: block;
            margin: 0 16px;
        }
        .weather-item {
            display: block;
            text-align: right;
        }
        .weather-item.date-time-today {
            color: #666;
            font-weight: 400;
            font-size: 12px;
            line-height: 14px;
            letter-spacing: 0.01em;
        }
        .weather-item.location {
            color: #333;
            font-size: 14px;
            line-height: 17px;
            font-weight: 500;
        }
        .weather-item.temperature {
            line-height: 24px;
            color: #333;
            font-weight: 400;
            margin-left: 8px;
            font-size: 20px;
        }
        .weather svg {
            margin: 0 0 0 10px;
        }
        .user-info {
            color: gray;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            cursor: pointer;
        }
        .user-info:hover .user-logout {
            visibility: visible;
            opacity: 1;
            top: 45px;
        }
        .user-info > svg {
            margin: 0 0 0 5px;
            stroke: gray;
        }
        .user-name {
            position: relative;
            top: 1px;
        }
        .user-name b {
            font-weight: 600;
        }
        .user-avatar {
            position: relative;
            margin: 0 0 0 10px;
        }
        .user-avatar .avatar {
            width: 35px;
            height: 35px;
            background: #1a7900 none;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            font-size: 18px;
            font-weight: 600;
            text-transform: uppercase;
        }
        .user-avatar svg {
            stroke: #4d4d4d;
        }
        .user-logout {
            position: absolute;
            top: 60px;
            right: -25px;
            width: 140px;
            height: 32px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 12px;
            background: #eee none;
            border-radius: 5px;
            font-size: 12px;
            color: #666;
            font-weight: 600;
            border: 0;
            visibility: hidden;
            opacity: 0;
            transition: all 0.15s;
        }
        .user-logout::before {
            content: "";
            position: absolute;
            top: -8px;
            right: 35px;
            width: 0;
            height: 0;
            border-left: 8px solid transparent;
            border-right: 8px solid transparent;
            border-bottom: 9px solid #eee;
        }
        .search-link {
            margin: 0 0 0 20px;
            line-height: 0;
        }
        .search-link svg {
            stroke: #4d4d4d;
        }
        .menu {
            position: -webkit-sticky;
            position: sticky;
            top: 0;
            z-index: 9;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
        }
        .menu::before {
            background: #fff none;
        }
        .menu-wrap {
            margin: 0 auto;
            padding: 0;
            list-style: none;
            border-bottom: 1px solid #eee;
            position: -webkit-sticky;
            position: sticky;
            top: 0;
            z-index: 10;
            display: flex;
            align-items: center;
            justify-content: space-between;
            font-size: 12px;
        }
        .menu-wrap::before {
            background: #fff none;
            top: -1px;
        }
        .menu-wrap > li {
            position: relative;
        }
        .menu-wrap > li.has-child::after {
            content: "";
            width: 0;
            height: 0;
            border-left: 8px solid transparent;
            border-right: 8px solid transparent;
            border-bottom: 8px solid #eee;
            position: absolute;
            bottom: -2px;
            left: 50%;
            transform: translate(-50%, 30px);
            transition: all 0.15s;
            visibility: hidden;
            opacity: 0;
        }
        .menu-wrap > li.has-child:hover::after {
            visibility: visible;
            opacity: 1;
            transform: translate(-50%, 0);
        }
        .menu-wrap > li.has-child:hover .submenu {
            visibility: visible;
            opacity: 1;
            transform: translateY(0);
        }
        .menu-wrap > li > a {
            font-size: 16px;
            font-weight: 700;
            color: #333;
            height: 38px;
            display: flex;
            align-items: center;
            text-transform: uppercase;
        }
        .menu-wrap > li:hover::before,
        .menu-wrap > li.active::before {
            content: "";
            width: 100%;
            height: 0;
            position: absolute;
            left: 0;
            bottom: -2px;
            border-top: 3px solid #1a7900;
        }
        .menu-wrap > li.home svg {
            stroke: #333;
        }
        .menu-wrap > li.home svg path:nth-child(1) {
            fill: #333;
        }
        .menu-wrap > li.menu-more {
            cursor: pointer;
            display: flex;
            align-items: center;
        }
        .menu-wrap > li.menu-more:hover::before {
            display: none;
        }
        .menu-wrap > li.menu-more .more {
            stroke: #4d4d4d;
        }
        .menu-wrap > li.menu-more .more:hover {
            stroke: #1a7900;
        }
        .menu-wrap > li.menu-more .close {
            stroke: #1a7900;
            display: none;
        }
        .menu-wrap > li.menu-more.show .more {
            display: none;
        }
        .menu-wrap > li.menu-more.show .close {
            display: block;
        }
        .menu-second {
            margin: 0 0 0 40px;
            padding: 0;
            list-style: none;
            display: flex;
            align-items: center;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            font-weight: 400;
            font-size: 14px;
            line-height: 20px;
        }
        .menu-second.child {
            margin: 12px 0 0;
            margin-bottom: -13px;
            padding-top: 10px;
            border-top: 1px solid;
        }
        .menu-second.child .deactive a {
            color: #888;
        }
        .menu-second.child li {
            display: block;
            position: relative;
        }
        .menu-second.child li:not(:first-of-type) {
            margin: 0 0 0 30px;
        }
        .menu-second.child li:not(:first-of-type)::before {
            display: none;
        }
        .menu-second.child li h1 {
            font-size: 14px;
            line-height: 20px;
            color: #222;
            margin: 0;
            font-weight: 600;
        }
        .menu-second.child li a {
            font-size: 14px;
            line-height: 20px;
            color: #222;
            padding: 0 0 4px;
            border-bottom: 3px solid transparent;
        }
        .menu-second.child li.has-child::after {
            content: "";
            width: 0;
            height: 0;
            border-left: 8px solid transparent;
            border-right: 8px solid transparent;
            border-bottom: 8px solid #eee;
            position: absolute;
            bottom: -13px;
            left: 50%;
            transform: translate(-50%, 30px);
            transition: all 0.15s;
            visibility: hidden;
            opacity: 0;
        }
        .menu-second.child li.has-child:hover .submenu {
            visibility: visible;
            opacity: 1;
            transform: translateY(0);
        }
        .menu-second.child li.has-child .submenu {
            margin: 32px 0;
            padding: 2px 0 4px;
            list-style: none;
            position: absolute;
            left: 0;
            top: 0;
            max-width: 250px;
            background: #fff none;
            border: 1px solid #eee;
            border-radius: 5px;
            transition: all 0.15s;
            visibility: hidden;
            opacity: 0;
            transform: translateY(15px);
            z-index: 9;
        }
        .menu-second.child li.has-child .submenu > li {
            margin: 0;
            border-bottom: none;
        }
        .menu-second.child
        li.has-child
        .submenu
        > li:not(:first-of-type)::before {
            display: none;
        }
        .menu-second.child li.has-child .submenu > li:last-of-type {
            border-bottom: 0;
        }
        .menu-second.child li.has-child .submenu > li > a {
            padding: 6px 12px;
            font-size: 12px;
            line-height: 16px;
            font-weight: 500;
            color: #666;
            display: flex;
            align-items: center;
            white-space: nowrap;
            transition: all 0.15s;
            border-bottom: 0;
        }
        .menu-second.child li.has-child .submenu > li > a:hover {
            color: #2361ff;
        }
        .menu-second.child li.has-child .submenu > li > a::before {
            content: "";
            width: 0;
            height: 0;
            border-top: 1px solid #2361ff;
            position: relative;
            display: block;
            transition: all 0.15s;
        }
        .menu-second.child li.has-child .submenu > li > a:hover::before {
            width: 10px;
            margin: 0 6px 0 0;
        }
        .menu-second.child li.active a {
            color: #222;
        }
        .menu-second.subcate {
            margin: 12px 0 0;
            margin-bottom: -13px;
            padding-top: 10px;
            border-top: 1px solid;
        }
        .menu-second.subcate .deactive a {
            color: #888;
        }
        .menu-second.subcate li {
            display: block;
            position: relative;
        }
        .menu-second.subcate li:not(:first-of-type) {
            margin: 0 0 0 30px;
        }
        .menu-second.subcate li:not(:first-of-type)::before {
            display: none;
        }
        .menu-second.subcate li h1 {
            font-size: 14px;
            line-height: 20px;
            color: #222;
            margin: 0;
            font-weight: 600;
        }
        .menu-second.subcate li a {
            font-size: 14px;
            line-height: 20px;
            color: #222;
            padding: 0 0 4px;
            border-bottom: 3px solid transparent;
        }
        .menu-second.subcate li.has-child::after {
            content: "›";
            transform: rotate(90deg);
            position: absolute;
            float: left;
            font-size: 23px;
            padding: 0 5px;
            visibility: hidden;
            color: #a0a4a8;
            top: 0;
            right: -20px;
            visibility: hidden;
        }
        .menu-second.subcate li.has-child:hover::after {
            visibility: visible;
        }
        .menu-second.subcate li.has-child:hover .submenu {
            visibility: visible;
            opacity: 1;
            transform: translateY(0);
        }
        .menu-second.subcate li.has-child .submenu {
            margin: 32px 0;
            padding: 2px 0 4px;
            list-style: none;
            position: absolute;
            left: 0;
            top: 0;
            max-width: 250px;
            background: #fff none;
            border: 1px solid #eee;
            border-radius: 5px;
            transition: all 0.15s;
            visibility: hidden;
            opacity: 0;
            transform: translateY(15px);
            z-index: 9;
        }
        .menu-second.subcate li.has-child .submenu > li {
            margin: 0;
            border-bottom: none;
            list-style-type: none;
        }
        .menu-second.subcate
        li.has-child
        .submenu
        > li:not(:first-of-type)::before {
            display: none;
        }
        .menu-second.subcate li.has-child .submenu > li:last-of-type {
            border-bottom: 0;
        }
        .menu-second.subcate li.has-child .submenu > li > a {
            padding: 6px 12px;
            font-size: 14px;
            line-height: 16px;
            font-weight: 500;
            color: #222;
            display: flex;
            align-items: center;
            white-space: nowrap;
            transition: all 0.15s;
            border-bottom: 0;
            font-weight: 400;
            text-transform: none;
        }
        .menu-second.subcate li.has-child .submenu > li > a:hover {
            color: #0f6c32;
            list-style-type: none;
            background: #f4f6fa;
            border-radius: 8px;
        }
        .menu-second.subcate li.has-child .submenu > li > a::before {
            content: "";
            width: 0;
            height: 0;
            border-top: 1px solid #2361ff;
            position: relative;
            display: block;
            transition: all 0.15s;
        }
        .menu-second.subcate li.has-child .submenu > li > a:hover::before {
            margin: 0 6px 0 0;
        }
        .menu-second.subcate li.active a {
            color: #222;
        }
        .menu-second li {
            display: flex;
            align-items: center;
        }
        .menu-second li:not(:first-of-type)::before {
            content: "";
            position: relative;
            width: 0;
            height: 15px;
            border-left: 1px solid #c4c4c4;
            margin: 0 12px;
            display: block;
            top: 2px;
        }
        .menu-second.sub-menu {
            margin: 0;
            flex-wrap: wrap;
            min-height: 20px;
        }
        .menu-second.sub-menu li:not(:first-of-type)::before {
            margin: 0 8px;
        }
        .menu-second.ml-30 {
            margin-left: 30px;
        }
        .submenu {
            margin: 0;
            padding: 2px 0 4px;
            list-style: none;
            position: absolute;
            left: -5px;
            top: 39px;
            min-width: 140px;
            background: #eee none;
            border-radius: 0 0 5px 5px;
            transition: all 0.15s;
            visibility: hidden;
            opacity: 0;
            transform: translateY(15px);
        }
        .submenu > li {
            border-bottom: 1px solid #d5d5d5;
        }
        .submenu > li:last-of-type {
            border-bottom: 0;
        }
        .submenu > li > a {
            padding: 8px 12px;
            line-height: 16px;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            font-weight: 500;
            text-transform: uppercase;
            color: #666;
            display: flex;
            align-items: center;
            white-space: nowrap;
            transition: all 0.15s;
        }
        .submenu > li > a:hover {
            color: #2361ff;
        }
        .submenu > li > a::before {
            content: "";
            width: 0;
            height: 0;
            border-top: 1px solid #2361ff;
            position: relative;
            display: block;
            transition: all 0.15s;
        }
        .submenu > li > a:hover::before {
            width: 10px;
            margin: 0 6px 0 0;
        }
        .nav-full {
            position: fixed;
            left: 50%;
            width: 100vw;
            height: 100vh;
            z-index: 9;
            visibility: hidden;
            opacity: 0;
            padding: 39px 0 0;
            transition: top 0.15s, visibility 0.15s, opacity 0.15s;
            transform: translateX(-50%);
            min-width: 1158px;
        }
        @media only screen and (max-width: 1199px) {
            .nav-full {
                left: 0;
                transform: translateX(0);
            }
        }
        .nav-full.show {
            position: absolute;
            top: 0;
            visibility: visible;
            opacity: 1;
        }
        .nav-full::before {
            background: #eee none;
        }
        .nav-full .nf-wrap {
            display: grid;
            grid-template-columns: auto 270px;
            grid-gap: 60px;
            height: 100%;
        }
        .nf-menu {
            margin: 0;
            padding: 20px 0 0;
            list-style: none;
            display: grid;
            grid-template-columns: repeat(6, auto);
            grid-row-gap: 20px;
            grid-column-gap: 30px;
            flex-wrap: wrap;
            align-content: flex-start;
            max-height: 100%;
            overflow-y: auto;
        }
        .nf-menu::-webkit-scrollbar {
            width: 4px;
        }
        .nf-menu::-webkit-scrollbar-thumb {
            background-color: #c4c4c4;
        }
        .nf-menu > li > a {
            font-size: 14px;
            line-height: 18px;
            font-weight: 600;
            text-transform: uppercase;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
        }
        .nf-submenu {
            margin: 8px 0 0;
            padding: 0;
            list-style: none;
        }
        .nf-submenu > li:not(:first-of-type) {
            margin: 8px 0 0;
        }
        .nf-submenu > li > a {
            font-size: 13px;
            line-height: 15px;
            color: #666;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
        }
        .nf-submenu > li > a:hover {
            color: #2361ff;
        }

        .nfs-menu {
            margin: 20px 0 0;
            padding: 0;
            list-style: none;
        }
        .nfs-menu > li {
            display: flex;
        }
        .nfs-menu > li:not(:first-of-type) {
            margin: 16px 0 0;
        }
        .nfs-menu > li:nth-child(2) {
            margin-top: 20px;
        }
        .nfs-menu > li:last-of-type {
            margin-top: 12px;
        }
        .nfs-menu > li.line {
            height: 0;
            border-top: 1px solid #ccc;
        }
        .nfs-menu > li > a {
            font-size: 14px;
            line-height: 18px;
            font-weight: 600;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
        }
        .nfs-menu > li > a.uppercase {
            text-transform: uppercase;
        }
        .nfs-menu > li > a.email {
            display: flex;
            align-items: center;
            font-weight: 400;
        }
        .nfs-menu > li > a.email svg {
            margin: 0 8px 0 0;
            stroke: #666;
        }
        .nfs-menu > li > a.headphone {
            display: flex;
            align-items: center;
            font-weight: 400;
        }
        .nfs-menu > li > a.headphone svg {
            margin: 0 8px 0 0;
            stroke: #666;
        }
        .social {
            margin: 24px 0 0;
        }
        .social-label {
            display: block;
            margin: 0;
        }
        .social-list {
            margin: 0 0 0 20px;
        }
        .social-list a {
            width: 30px;
            height: 30px;
            background: none no-repeat center/auto 30px;
            margin: 0 16px 0 0;
            text-indent: -999999px;
            color: transparent;
            overflow: hidden;
            line-height: 0;
        }
        .social-list a:last-of-type {
            margin-right: 0;
        }
        .social-list a.facebook {
            background-image: url(https://cdnweb.dantri.com.vn/dist/f79dca0321a473942b57.svg);
        }
        .social-list a.youtube {
            background-image: url(https://cdnweb.dantri.com.vn/dist/add0b845165b2db1bdc0.svg);
        }
        .social-list a.tiktok {
            width: 22px;
            background-image: url(https://cdnweb.dantri.com.vn/dist/e84c1388df2f58641617.svg);
        }

        .no-gutters {
            margin-right: 0;
            margin-left: 0;
        }
        .body {
            margin-top: 24px;
            padding-bottom: 24px;
        }
        .title-container {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }
        .title-breadcrumbs {
            display: flex;
            align-items: flex-end;
        }
        .title-main {
            display: flex;
            align-items: center;
        }
        .title-page {
            margin: -3px 0 -4px 0;
            font-size: 24px;
            line-height: 32px;
            font-weight: 600;
            color: #222;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
        }
        .title-page a {
            color: #222;
        }
        .title-page.mt-30 {
            margin-top: 30px;
        }
        .title-parent {
            margin: -3px 0;
            font-size: 24px;
            line-height: 34px;
            font-weight: 400;
            color: #222;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
        }
        .title-parent a {
            color: #a0a4a8;
        }
        .title-parent.mt-30 {
            margin-top: 30px;
        }
        .title-author::after {
            content: "";
            width: 50px;
            height: 0;
            display: block;
            left: 0;
            bottom: -2px;
            border-top: 5px solid #1a7900;
            margin: 12px 0 0;
            border-left: 0;
        }
        .title-subpage {
            margin: 0;
            font-size: 24px;
            line-height: 28px;
            font-weight: 600;
            color: #666;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            display: flex;
            align-items: center;
        }
        .title-subpage::before {
            content: "›";
            position: relative;
            margin: 0 10px 0 12px;
            font-weight: 500;
            color: gray;
        }
        .title-subpage a {
            color: #222;
        }
        .title-tag {
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            font-size: 20px;
            font-weight: 100;
            color: #333;
            margin: 0.67em 0;
        }
        .title-tag h1 {
            display: inline-block;
            font-size: 20px;
            margin: 0;
        }
        .title-sub {
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            color: #1a7900;
            text-decoration: underline;
        }
        .ads-body .body {
            margin-top: 250px;
            padding-top: 20px;
            background: #fff none;
        }
        .ads-body
        .bg-wrap:not(.header):not(.menu):not(.menu-wrap):not(
          .seagame-header
        )::before {
            max-width: 100%;
        }

        #desktop-top-page {
            background: #f4f6fa none;
        }
        .header.minify {
            padding-top: 0;
            padding-bottom: 0;
            min-height: 36px;
            position: relative;
        }
        .header-inner {
            padding: 6px 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
            z-index: 10;
        }
        .header-inner::before {
            background: #fff none;
        }
        .header-inner__left {
            display: flex;
            align-items: center;
        }
        .header-inner__left > *:not(:first-child) {
            margin-left: 12px;
        }
        .header-inner__left .logo {
            line-height: 0;
        }
        .header-inner__left .logo a {
            display: inline-block;
            line-height: 0;
        }
        .header-inner__left .logo a svg,
        .header-inner__left .logo a img {
            width: auto;
        }
        .header-inner__left .logo.dtnewyear a {
            max-height: 16px;
        }
        .header-inner__left .logo.dtnewyear svg,
        .header-inner__left .logo.dtnewyear img {
            height: 30px;
            position: relative;
            top: -8px;
        }
        .header-inner__left .navigation {
            width: 24px;
            height: 24px;
            padding: 0;
            border: 0;
            background: transparent none;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .header-inner__left .navigation svg.close {
            display: none;
        }
        .header-inner__left .navigation.show svg.more {
            display: none;
        }
        .header-inner__left .navigation.show svg.close {
            display: block;
        }
        .header-inner__left .category {
            display: flex;
            align-items: center;
            font-size: 14px;
            font-weight: 500;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
        }
        .header-inner__left .category:not(:nth-child(3)) {
            margin-left: 6px;
        }
        .header-inner__left .category svg {
            position: relative;
            top: 1px;
            margin-right: 6px;
        }
        .header-inner__right {
            display: flex;
            align-items: center;
        }
        .header-inner__right > *:not(:first-child) {
            margin-left: 32px;
            position: relative;
        }
        .header-inner__right > *:not(:first-child)::before {
            content: "";
            width: 0;
            height: 22px;
            position: absolute;
            top: 50%;
            left: -12px;
            border-left: 1px solid #e6e8e9;
            transform: translateY(-50%);
        }
        .header-inner__right .search-link {
            margin: 0;
        }
        .header-inner__right .user-info {
            font-size: 12px;
        }
        .header-inner__right .user-info > svg {
            width: 24px;
            margin: 0;
        }
        .header-inner__right .user-info:hover .user-logout {
            top: 35px;
        }
        .header-inner__right .user-avatar {
            margin: 0 0 0 8px;
        }
        .header-inner__right .user-avatar .avatar {
            width: 24px;
            height: 24px;
            font-size: 11px;
        }
        .header-inner__right .user-logout {
            top: 50px;
        }
        .header-inner__right .user-logout::before {
            right: 28px;
        }
        .header-inner__right .header-account {
            font-size: 12px;
        }
        .header-inner__right .header-account svg {
            width: 20px;
            margin: 0 0 0 8px;
        }
        .header .nav-full {
            padding-top: 36px;
        }
        .wc-header {
            position: -webkit-sticky;
            position: sticky;
            top: 0;
            z-index: 9;
            display: flex;
            align-items: center;
            justify-content: space-between;
            min-height: 60px;
        }
        .wc-header::before {
            background: #831432
            url(https://cdnweb.dantri.com.vn/dist/0012af0c37b17abfb3d4.jpg)
            no-repeat center/cover;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.4);
        }
        .wc-header .logo {
            line-height: 0;
            margin: 0;
        }
        .wc-header .logo a {
            display: inline-block;
            line-height: 0;
        }
        .wc-navigation {
            margin: 0;
            padding: 0;
            list-style: none;
            display: flex;
            align-items: center;
        }
        .wc-navigation h1,
        .wc-navigation h2 {
            margin: 0;
        }
        .wc-navigation a {
            color: #fff;
            display: flex;
            align-items: center;
            height: 60px;
            font-size: 13px;
            font-weight: 600;
            font-family: "SVN Poppins", -apple-system, BlinkMacSystemFont,
            "Segoe UI", "Helvetica Neue", "Arial", "Apple Color Emoji",
            "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
            text-transform: uppercase;
            position: relative;
        }
        .wc-navigation a::after {
            content: "";
            position: absolute;
            left: 0;
            bottom: 4px;
            width: 100%;
            height: 0;
            border-top: 2px solid transparent;
        }
        .wc-navigation li:not(:first-child) {
            margin-left: 32px;
        }
        .wc-navigation li.active a:after,
        .wc-navigation li:hover a:after {
            border-top-color: #31dcca;
        }
        @font-face {
            font-family: "Fraunces";
            src: url(https://cdnweb.dantri.com.vn/dist/5830bb1d2aafed3df6e4.eot);
            src: url(https://cdnweb.dantri.com.vn/dist/5830bb1d2aafed3df6e4.eot?#iefix)
            format("embedded-opentype"),
            url(https://cdnweb.dantri.com.vn/dist/a7a17f7eaea56dfffcf0.woff2)
            format("woff2"),
            url(https://cdnweb.dantri.com.vn/dist/b73ecaafcabfd1936761.woff)
            format("woff");
            font-weight: 600;
            font-style: normal;
            font-display: swap;
        }
        @font-face {
            font-family: "Fraunces";
            src: url(https://cdnweb.dantri.com.vn/dist/c5d87a0dc4458727b6f0.eot);
            src: url(https://cdnweb.dantri.com.vn/dist/c5d87a0dc4458727b6f0.eot?#iefix)
            format("embedded-opentype"),
            url(https://cdnweb.dantri.com.vn/dist/e80c871396d64e4a4ad6.woff2)
            format("woff2"),
            url(https://cdnweb.dantri.com.vn/dist/390eda533f222a8ffd23.woff)
            format("woff");
            font-weight: 600;
            font-style: italic;
            font-display: swap;
        }
        .lunar-parent .lunar-header .logo svg path:nth-child(3),
        .lunar-parent .lunar-header .logo svg path:nth-child(4),
        .lunar-parent .lunar-header .logo svg path:nth-child(5) {
            fill: #fff;
        }
        .lunar-parent .lunar-header .lunar-navigation a {
            color: #fff;
        }
        .lunar-child .lunar-default {
            margin-top: 0;
            padding-top: 0;
            border-top: 0;
        }
        .lunar-header {
            padding-top: 40px;
            padding-bottom: 40px;
            display: grid;
            grid-template-columns: 312px calc(100% - 312px);
            align-items: center;
            position: relative;
            z-index: 1;
        }
        .lunar-header .logo {
            margin: 0;
        }
        .lunar-navigation {
            margin: 0;
            padding: 0;
            list-style: none;
        }
        .lunar-navigation::after {
            content: "";
            display: block;
            clear: both;
        }
        .lunar-navigation li {
            float: left;
        }
        .lunar-navigation li:not(:first-child) {
            margin: 0 0 0 36px;
        }
        .lunar-navigation li.active a {
            color: #cd3038;
        }
        .lunar-navigation a {
            font-family: "Fraunces", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", serif;
            font-weight: 600;
            font-size: 18px;
            line-height: 22px;
            color: #292d32;
        }
        .lunar-navigation a:hover {
            color: #cd3038;
        }
    </style>
    <style>
        .logo-article {
            display: block;
            background: transparent none no-repeat center/100% 100%;
        }

        .logo-blog {
            width: 64px;
            height: 16px;
            background-image: url(https://cdnweb.dantri.com.vn/dist/26be7be2654b9e9207f9.svg);
        }
        .article-thumb a {
            position: relative;
            line-height: 0;
            display: block;
            padding: 0 0 66.666666%;
            overflow: hidden;
        }
        .article-thumb img {
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
        }
        .article-title {
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            font-weight: 600;
        }
        .article-title.text-ico a::before {
            content: attr(data-label);
            display: inline-block;
            color: #fff;
            padding: 3px 4px 1px;
            margin: 0 5px 0 0;
            font-weight: 500;
            font-size: 11px;
            line-height: 15px;
            font-family: "Roboto", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            font-style: normal;
            text-transform: uppercase;
            border-radius: 4px;
            position: relative;
            top: -1px;
        }
        .article-title.orange a::before {
            background: #f59e0b none;
        }
        .article-title.red a::before {
            background: #b91c1c none;
        }
        .article-excerpt {
            font-size: 14px;
            line-height: 22px;
            color: #888;
        }
        .article-excerpt a {
            color: #888;
        }
        .article-ico {
            position: absolute;
            left: 6px;
            bottom: 6px;
            display: flex;
            align-items: center;
            font-weight: 500;
            font-size: 12px;
            line-height: 18px;
            color: #fff;
        }
        .article-ico i {
            width: 25px;
            height: 25px;
            display: block;
            border-radius: 50%;
            background: transparent none center/100% 100%;
        }
        .article-ico i.video {
            background-image: url(https://cdnweb.dantri.com.vn/dist/ac210c0e1c9b4668bb35.svg);
            margin-right: 4px;
        }
        .article-ico i.photo {
            background-image: url(https://cdnweb.dantri.com.vn/dist/82b0481440549a44c89c.svg);
        }
        .article-ico i.album {
            background-image: url(https://cdnweb.dantri.com.vn/dist/d2e23de7990a9a8e2901.svg);
        }
        .video-blocked {
            padding: 25% 10%;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #222;
            color: #fff;
            text-align: center;
            cursor: not-allowed;
        }
        .grid.category {
            margin: 24px 0 0;
            padding: 24px 0 0;
            border-top: 1px solid #eee;
        }
        .grid.category .head {
            display: flex;
        }
        .grid.category .head .title {
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            font-size: 16px;
            line-height: 22px;
            font-weight: 600;
            text-transform: uppercase;
            color: #0f6c32;
            margin: 0;
        }
        .grid.category .head .title a {
            color: #0f6c32;
        }
        .grid.category .head .title a:hover {
            color: #06c;
        }
        .grid.category .head .subcate {
            margin: 0 0 0 24px;
            padding: 0;
            list-style: none;
            display: flex;
            align-items: center;
        }
        .grid.category .head .subcate li:not(:nth-child(1)) {
            margin-left: 20px;
        }
        .grid.category .head .subcate li a {
            color: #828282;
        }
        .grid.category .head .subcate li a:hover {
            color: #06c;
        }
        .grid.category .article-container {
            margin: 16px 0 0;
            display: grid;
            grid-template-columns: calc(100% - 341px) 300px;
            grid-gap: 41px;
        }
        .grid.category .article-highlight {
            position: relative;
        }
        .grid.category .article-highlight::before {
            content: "";
            display: block;
            position: absolute;
            top: 0;
            right: 535px;
            width: 0;
            height: 100%;
            border-left: 1px solid #eee;
        }
        .grid.category .article-highlight::after {
            content: "";
            display: block;
            clear: both;
        }
        .grid.category .article-highlight .article-item:not(:nth-child(1)) {
            float: left;
            width: calc(100% - 555px);
        }
        .grid.category .article-highlight .article-item:nth-child(1) {
            float: right;
            width: 514px;
        }
        .grid.category
        .article-highlight
        .article-item:nth-child(1)
        .article-title {
            font-size: 22px;
            line-height: 34px;
        }
        .grid.category
        .article-highlight
        .article-item:nth-child(1)
        .article-excerpt {
            margin-top: 12px;
        }
        .grid.category .article-highlight .article-item:nth-child(3) {
            margin-top: 20px;
            padding-top: 20px;
            border-top: 1px solid #eee;
        }
        .grid.category .article-highlight .article-title {
            font-size: 16px;
            line-height: 22px;
            margin: 12px 0 0;
        }
        .grid.category .article-list {
            position: relative;
        }
        .grid.category .article-list::before {
            content: "";
            display: block;
            position: absolute;
            top: 0;
            left: -21px;
            width: 0;
            height: 100%;
            border-left: 1px solid #eee;
        }
        .grid.category .article-list .article-item {
            display: grid;
            grid-template-columns: calc(100% - 115px) 99px;
            grid-gap: 16px;
        }
        .grid.category .article-list .article-item:not(:nth-child(1)) {
            margin-top: 16px;
            padding-top: 16px;
            border-top: 1px solid #eee;
        }
        .grid.category .article-list .article-thumb {
            order: 2;
        }
        .grid.category .article-list .article-title {
            margin: 0;
            font-size: 15px;
            line-height: 20px;
        }
        .grid.row {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            grid-gap: 24px;
            margin: 36px 0 0;
        }
        .grid.row.mt-60 {
            margin-top: 60px;
        }
        .grid.row.three {
            grid-template-columns: repeat(3, 1fr);
        }
        .grid.row .article-col {
            padding: 11px 0 0;
            position: relative;
        }
        .grid.row .article-col::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            border-top: 1px solid #eee;
            display: block;
            height: 0;
            width: 100%;
        }
        .grid.row .article-col .title {
            margin: 0;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            font-size: 16px;
            line-height: 22px;
            color: #0f6c32;
            font-weight: 600;
            text-transform: uppercase;
        }
        .grid.row .article-col .title.mb-24 {
            margin-bottom: 35px;
        }
        .grid.row .article-col .title a {
            color: #0f6c32;
        }
        .grid.row .article-col .navigation {
            margin: 4px 0 0;
            padding: 0;
            list-style: none;
            font-size: 13px;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
        }
        .grid.row .article-col .navigation::after {
            content: "";
            display: block;
            clear: both;
        }
        .grid.row .article-col .navigation li {
            float: left;
        }
        .grid.row .article-col .navigation li:not(:nth-child(1)) {
            margin-left: 12px;
        }
        .grid.row .article-col .navigation li a {
            color: #828282;
        }
        .grid.row .article-col .navigation li a:hover {
            color: #06c;
        }
        .grid.row .article-wrap {
            margin: 10px 0 0;
        }
        .grid.row .article-item:nth-child(1) .article-title {
            margin: 12px 0 0;
            font-size: 16px;
            line-height: 22px;
            min-height: 66px;
        }
        .grid.row .article-item:not(:nth-child(1)) {
            margin: 16px 0 0;
            padding: 16px 0 0;
            border-top: 1px solid #eee;
            display: grid;
            grid-template-columns: calc(100% - 124px) 110px;
            grid-gap: 14px;
        }
        .grid.row .article-item:not(:nth-child(1)) .article-thumb {
            order: 2;
        }
        .grid.row .article-item:not(:nth-child(1)) .article-title {
            margin: 0;
            font-size: 13px;
            line-height: 18px;
            font-weight: 400;
        }
        .spotlight-wrap {
            margin: 0;
            padding: 16px 0 30px;
        }
        .spotlight-wrap::before {
            background: #f4f6fa none;
            max-height: 260px;
            top: auto;
            bottom: 0;
        }
        .spotlight-wrap.mt-40 {
            margin-top: 40px;
        }
        .spotlight-wrap.line {
            border-top: 1px solid #eee;
        }
        .spotlight-wrap .title {
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            font-size: 16px;
            line-height: 22px;
            color: #0f6c32;
            font-weight: 600;
            text-transform: uppercase;
        }
        .spotlight-nav {
            display: flex;
            align-items: center;
        }
        .spotlight-menu {
            margin: 0 0 0 30px;
            padding: 0;
            list-style: none;
            display: flex;
            align-items: center;
            font-size: 16px;
            line-height: 22px;
        }
        .spotlight-menu li {
            margin: 0;
        }
        .spotlight-menu li:not(:first-child) {
            margin-left: 24px;
        }
        .spotlight-menu li a {
            color: #828282;
        }
        .spotlight-menu li a:hover {
            color: #06c;
        }
        .spotlight-slide {
            margin: 24px 0 0;
            position: relative;
        }
        .spotlight-slide:hover .spotlight-next,
        .spotlight-slide:hover .spotlight-prev {
            opacity: 1;
        }
        .spotlight-slide .spotlight-item {
            background: #fff none;
            box-shadow: 0 2px 0 rgba(0, 0, 0, 0.08);
            padding: 0 16px 16px;
            height: auto;
        }
        .spotlight-slide .spotlight-thumb {
            position: relative;
            left: -16px;
            width: calc(100% + 32px);
        }
        .spotlight-slide .spotlight-thumb a {
            position: relative;
            line-height: 0;
            display: block;
            padding: 0 0 150%;
            overflow: hidden;
        }
        .spotlight-slide .spotlight-thumb img {
            width: 100%;
            height: 100%;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .spotlight-slide .spotlight-category {
            margin: 8px 0 0;
        }
        .spotlight-slide .spotlight-title {
            margin: 8px 0 0;
            font-size: 16px;
            line-height: 22px;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            font-weight: 600;
        }
        .spotlight-slide .spotlight-title a {
            color: #000;
        }
        .spotlight-slide .spotlight-title a:hover {
            color: #06c;
        }
        .spotlight-swiper .swiper-pagination-bullets {
            display: flex;
            justify-content: center;
            margin: 24px 0 0;
        }
        .spotlight-swiper .swiper-pagination-bullets .swiper-pagination-bullet {
            width: 12px;
            height: 12px;
            margin: 0 4px;
            background: #c4c4c4 none;
            opacity: 1;
        }
        .spotlight-swiper
        .swiper-pagination-bullets
        .swiper-pagination-bullet.swiper-pagination-bullet-active {
            background: #1a7900 none;
        }
        .spotlight-swiper:not(.swiper-initialized) .swiper-wrapper {
            display: flex;
            overflow: hidden;
            overflow-x: auto;
        }
        .spotlight-swiper:not(.swiper-initialized) .swiper-slide {
            flex: 0 0 auto;
            max-width: 100%;
            width: 264px;
        }
        .spotlight-swiper:not(.swiper-initialized)
        .swiper-slide:not(:nth-child(1)) {
            margin-left: 24px;
        }
        .spotlight-prev {
            position: absolute;
            top: 182px;
            left: 0;
            width: 24px;
            height: 52px;
            border-radius: 0 8px 8px 0;
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 1;
            cursor: pointer;
            background: #1a7900 none;
            opacity: 0;
            transition: opacity 0.2s;
        }
        .spotlight-prev.swiper-button-disabled {
            display: none;
        }
        .spotlight-next {
            position: absolute;
            top: 182px;
            right: 0;
            width: 24px;
            height: 52px;
            border-radius: 8px 0 0 8px;
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 1;
            cursor: pointer;
            background: #1a7900 none;
            opacity: 0;
            transition: opacity 0.2s;
        }
        .spotlight-next.swiper-button-disabled {
            display: none;
        }
        .grid.highlight {
            display: grid;
            grid-template-columns: calc(100% - 341px) 300px;
            grid-gap: 41px;
        }
        .grid.highlight .article.highlight {
            position: relative;
        }
        .grid.highlight .article.highlight::before {
            content: "";
            display: block;
            position: absolute;
            top: 0;
            right: 535px;
            width: 0;
            height: 100%;
            border-left: 1px solid #eee;
        }
        .grid.highlight .article.highlight::after {
            content: "";
            display: block;
            clear: both;
        }
        .grid.highlight .article.highlight .article-item:not(:nth-child(1)) {
            float: left;
            width: calc(100% - 555px);
        }
        .grid.highlight .article.highlight .article-item:nth-child(1) {
            float: right;
            width: 514px;
        }
        .grid.highlight
        .article.highlight
        .article-item:nth-child(1)
        .article-title {
            font-size: 24px;
            line-height: 34px;
        }
        .grid.highlight
        .article.highlight
        .article-item:nth-child(1)
        .article-title.text-ico
        a::before {
            top: -4px;
        }
        .grid.highlight
        .article.highlight
        .article-item:nth-child(1)
        .article-excerpt {
            margin-top: 12px;
        }
        .grid.highlight .article.highlight .article-item:nth-child(3) {
            margin-top: 20px;
            padding-top: 20px;
            border-top: 1px solid #eee;
        }
        .grid.highlight .article.highlight .article-title {
            font-size: 16px;
            line-height: 22px;
            margin: 12px 0 0;
        }
        .grid.highlight .article.special {
            position: relative;
        }
        .grid.highlight .article.special::before {
            content: "";
            display: block;
            position: absolute;
            top: 0;
            left: -21px;
            width: 0;
            height: 100%;
            border-left: 1px solid #eee;
        }
        .grid.highlight .article.special .article-item:not(:nth-child(1)) {
            margin-top: 24px;
            padding-top: 24px;
            border-top: 1px solid #eee;
        }
        .grid.highlight .article.special .article-item.blog .article-container {
            grid-row-gap: 10px;
        }
        .grid.highlight
        .article.special
        .article-item.blog
        .article-container
        .article-category
        a {
            font-weight: 600;
            font-size: 12px;
            line-height: 140%;
            text-transform: uppercase;
            color: #bd975f;
        }
        .grid.highlight
        .article.special
        .article-item.blog
        .article-container
        .article-avatar
        a
        i {
            width: 88px;
            height: 88px;
        }
        .grid.highlight
        .article.special
        .article-item.blog
        .article-container
        .article-comment {
            justify-content: flex-start;
            align-items: stretch;
            font-size: 12px;
            font-weight: 400;
            line-height: 140%;
        }
        .grid.highlight
        .article.special
        .article-item.blog
        .article-container
        .article-comment
        svg {
            margin: 0 10px 0 0;
        }
        .grid.highlight
        .article.special
        .article-item.blog
        .article-container {
            display: inline-flex;
            flex-direction: column;
            min-width: 0;
            color: #25282b;
        }
        .grid.highlight
        .article.special
        .article-item.blog
        .article-container
        .author-name {
            font-weight: 400;
            font-size: 11px;
            line-height: 150%;
            text-transform: uppercase;
            color: #25282b;
            align-self: flex-end;
            min-width: 120px;
        }
        .grid.highlight
        .article.special
        .article-item.blog
        .article-container
        .article-author
        .author-title {
            font-weight: 400;
            font-size: 12px;
            color: #828282;
            line-height: 140%;
            align-self: flex-end;
            width: 120px;
        }
        .grid.highlight
        .article.special
        .article-item.blog
        .article-container
        .article-bottom {
            grid-column: 1 / span 2;
            display: flex;
            justify-content: space-between;
        }
        .grid.highlight .article.special .article-container {
            display: grid;
            grid-template-columns: calc(100% - 136px) 120px;
            grid-gap: 16px;
        }
        .grid.highlight .article.special .article-category {
            margin: 0 0 10px 0;
        }
        .grid.highlight .article.special .article-category a {
            line-height: 0;
        }
        .grid.highlight .article.special .article-title {
            margin: 0;
            font-size: 15px;
            line-height: 20px;
        }
        .grid.highlight .article.special .article-meta {
            margin: 8px 0 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            font-size: 12px;
            line-height: 17px;
            font-weight: 400;
        }
        .grid.highlight .article.special .article-avatar {
            display: flex;
            flex-wrap: wrap;
            margin: 0;
            align-items: center;
            justify-content: center;
        }
        .grid.highlight .article.special .article-avatar.multi a {
            width: 50%;
        }
        .grid.highlight .article.special .article-avatar.multi i {
            width: 36px;
            height: 36px;
        }
        .grid.highlight .article.special .article-avatar a {
            margin: 0;
            flex: 0 0 auto;
            max-width: 100%;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .grid.highlight .article.special .article-avatar i {
            display: block;
            width: 76px;
            height: 76px;
            border-radius: 50%;
            overflow: hidden;
            background: transparent
            url(https://cdnweb.dantri.com.vn/dist/b474c6ca2d1abee5b89b.png)
            no-repeat center/100% 100%;
        }
        .grid.highlight .article.special .article-comment {
            color: #28af4c;
        }
        .grid.highlight .article.special .article-author {
            color: #52575c;
            min-width: 88px;
            text-align: center;
        }
        .grid.hot {
            margin: 24px 0 0;
            padding: 24px 0 0;
            border-top: 4px solid #f1f1f1;
            display: grid;
            grid-template-columns: calc(100% - 896px) 514px 300px;
            grid-gap: 41px;
        }
        .grid.hot .title {
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            font-size: 14px;
            line-height: 20px;
            font-weight: 600;
            text-transform: uppercase;
            margin: 0 0 16px;
            color: #222;
        }
        .grid.hot .title span {
            color: #0f6c32;
        }
        .grid.hot .article-title {
            font-size: 16px;
            line-height: 22px;
            margin: 0;
        }
        .grid.hot .article.spotlight {
            position: relative;
        }
        .grid.hot .article.spotlight::before {
            content: "";
            display: block;
            position: absolute;
            top: 0;
            right: -21px;
            width: 0;
            height: 100%;
            border-left: 1px solid #eee;
        }
        .grid.hot .article.spotlight .article-item:not(:nth-child(2)) {
            margin-top: 20px;
            padding-top: 20px;
            border-top: 1px solid #eee;
        }
        .grid.hot .article.spotlight .article-thumb {
            margin: 0 0 8px;
        }
        .grid.hot .article.spotlight .article-category {
            margin: 0 0 4px;
        }
        .grid.hot .article.spotlight .article-category a {
            line-height: 0;
        }
        .grid.hot .article-hot .article-item {
            display: grid;
            grid-template-columns: 150px calc(100% - 166px);
            grid-gap: 16px;
        }
        .grid.hot .article-hot .article-item:not(:first-child) {
            margin-top: 24px;
        }
        .grid.hot {
            position: relative;
        }
        .grid.hot .sidebar::before {
            content: "";
            display: block;
            position: absolute;
            top: 0;
            left: -21px;
            width: 0;
            height: 100%;
            border-left: 1px solid #eee;
        }
        .grid.normal {
            margin: 22px 0 0;
            padding: 32px 0 0;
            border-top: 1px solid #eee;
            display: grid;
            grid-template-columns: calc(100% - 601px) 552px;
            grid-gap: 49px;
        }
        .grid.normal .article-list .article-item {
            display: grid;
            grid-template-columns: 233px calc(100% - 249px);
            grid-gap: 16px;
        }
        .grid.normal .article-list .article-item:not(:nth-child(1)) {
            margin-top: 20px;
            padding-top: 20px;
            border-top: 1px solid #f1f1f1;
        }
        .grid.normal .article-list .article-title {
            margin: 0;
            font-size: 18px;
            line-height: 25px;
        }
        .grid.normal .article-list .article-excerpt {
            margin-top: 8px;
        }
        .grid.normal .article-list .article-excerpt a {
            display: -webkit-box;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        .grid.normal .article-list .grid {
            margin-top: 20px;
            padding-top: 20px;
        }
        .grid.normal .article-list .grid.line-top {
            border-top: 1px solid #eee;
        }
        .grid.normal .article-list .grid.article-tttm {
            border-top: 3px solid #005baa;
        }
        .grid.normal .article-list .grid.article-tttm .title-head {
            color: #005baa;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .grid.normal .article-list .grid.article-tttm .title-head a {
            color: #005baa;
        }
        .grid.normal .article-list .grid.article-tttm .btn-tttm {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 123px;
            height: 32px;
            margin: 24px auto 0;
            font-weight: 700;
            font-size: 14px;
            line-height: 16px;
            color: #fff;
            background: #005baa none;
            padding: 0 15px;
            border-radius: 16px;
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
        }
        .grid.normal .article-list .grid .article-container {
            margin: 16px 0 0;
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            grid-gap: 20px;
        }
        .grid.normal .article-list .grid .article-item {
            display: block;
            grid-gap: 0;
            grid-template-columns: auto;
        }
        .grid.normal .article-list .grid .article-item:not(:nth-child(1)) {
            margin-top: 0;
            padding-top: 0;
            border-top: 0;
        }
        .grid.normal .article-list .grid .article-title {
            margin: 8px 0 0;
            font-size: 16px;
            line-height: 22px;
        }
        .grid.normal .article-list .grid .title-head {
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            font-size: 16px;
            line-height: 22px;
            font-weight: 600;
            text-transform: uppercase;
        }
        .grid.normal .category {
            position: relative;
        }
        .grid.normal .category::before {
            content: "";
            display: block;
            position: absolute;
            top: 0;
            left: -25px;
            width: 0;
            height: 100%;
            border-left: 1px solid #eee;
        }
        .grid.normal .category-head {
            display: flex;
            align-items: center;
        }
        .grid.normal .category-head .title {
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
            font-size: 16px;
            line-height: 22px;
            font-weight: 600;
            text-transform: uppercase;
            color: #0f6c32;
            margin: 0;
        }
        .grid.normal .category-head .title a {
            color: #0f6c32;
        }
        .grid.normal .category-head .title a:hover {
            color: #06c;
        }
        .grid.normal .category-nav {
            margin: 0 0 0 24px;
            padding: 0;
            list-style: none;
            display: flex;
            align-items: center;
        }
        .grid.normal .category-nav li:not(:nth-child(1)) {
            margin-left: 20px;
        }
        .grid.normal .category-nav li a {
            color: #828282;
        }
        .grid.normal .category-nav li a:hover {
            color: #06c;
        }
        .grid.normal .category-wrap.line {
            margin-top: 24px;
            padding-top: 24px;
            border-top: 4px solid #f1f1f1;
        }
        .grid.normal .category-container {
            margin: 16px 0 0;
            display: grid;
            grid-template-columns: 192px calc(100% - 233px);
            grid-row-gap: 12px;
            grid-column-gap: 41px;
            position: relative;
        }
        .grid.normal .category-container::before {
            content: "";
            display: block;
            position: absolute;
            top: 0;
            left: 213px;
            width: 0;
            height: 100%;
            border-left: 1px solid #eee;
        }
        .grid.normal .category .article-item:nth-child(1) {
            grid-row-start: 1;
            grid-row-end: 5;
        }
        .grid.normal .category .article-item:nth-child(1) .article-title {
            margin: 8px 0 0;
            font-size: 16px;
            line-height: 22px;
        }
        .grid.normal .category .article-item:nth-child(1) .article-excerpt {
            margin: 8px 0 0;
            font-size: 13px;
            line-height: 20px;
        }
        .grid.normal .category .article-item:nth-child(1) .article-excerpt a {
            display: -webkit-box;
            -webkit-line-clamp: 4;
            -webkit-box-orient: vertical;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        .grid.normal .category .article-item:not(:nth-child(1)) {
            display: grid;
            grid-template-columns: calc(100% - 102px) 90px;
            grid-gap: 12px;
        }
        .grid.normal
        .category
        .article-item:not(:nth-child(1)):not(:nth-child(2)) {
            padding-top: 12px;
            border-top: 1px solid #eee;
        }
        .grid.normal .category .article-item:not(:nth-child(1)) .article-thumb {
            order: 2;
        }
        .grid.normal .category .article-item:not(:nth-child(1)) .article-title {
            margin: 0;
            font-size: 14px;
            font-weight: 500;
            line-height: 20px;
        }


        .home-widget-ads {
            margin: 30px 0;
            padding: 12px;
            display: grid;
            grid-gap: 16px;
            grid-template-columns: calc(100% - 316px) 300px;
            border-top: 1px solid #e6e8e9;
            border-bottom: 1px solid #e6e8e9;
            background: #f9f9f9;
        }
        .home-widget-ads .home-widget__ads {
            max-width: 300px;
            display: flex;
            align-items: center;
        }
        .home-widget {
            font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI",
            "Helvetica Neue", "Arial", "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", sans-serif;
        }
        .home-widget .swiper-button-prev,
        .home-widget .swiper-button-next {
            --swiper-navigation-size: 12px;
            background-color: #0f6c32;
            padding: 25px 10px;
            color: #fff;
            font-weight: 700;
            margin-top: 0;
            transform: translateY(-50%);
            -webkit-transform: translateY(-50%);
            -ms-transform: translateY(-50%);
            z-index: 8;
        }
        .home-widget .swiper-button-prev {
            border-radius: 0 5px 5px 0;
        }
        .home-widget .swiper-button-next {
            border-radius: 5px 0 0 5px;
        }
        .wc-logo {
            display: block;
            line-height: 0;
        }
    </style>
</head>
<body>
<div data-module="google-one-tap"></div>
<div id="bannerMasthead" class="ads-masthead">
    <style>
        .mdbl_16 {
            min-height: 250px;
        }
    </style>
</div>
<header class="header container bg-wrap">
    <div class="header-top flex-jcb">
        <h1 class="header-logo dtnewyear flex-jcc">
            <a
                    aria-label="Báo điện tử - Tin tức cập nhật liên tục 24/7"
                    href="index.jsp"
            >
                <img
                        alt="Báo điện tử - Tin tức cập nhật liên tục 24/7"
                        height="40"
                        src="../icdn/2022/12/14/2-1671004462496.png"
                        width="0"
                />
            </a>
        </h1>
        <div class="header-area flex-jcb">
            <a
                    class="international flex-jcc"
                    href="${pageContext.request.contextPath}/Account/login"
                    target="_parent">
                Đăng Nhập
            </a>

            <div data-module="authen-header"></div>
            <a class="search-link" href="#">
                <svg
                        aria-hidden="true"
                        width="24"
                        height="24"
                        viewBox="0 0 24 24"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                >
                    <path
                            d="M11 19C15.4183 19 19 15.4183 19 11C19 6.58172 15.4183 3 11 3C6.58172 3 3 6.58172 3 11C3 15.4183 6.58172 19 11 19Z"
                            stroke-width="1.5"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                    />
                    <path
                            d="M21 20.9999L16.65 16.6499"
                            stroke-width="1.5"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                    />
                </svg>
            </a>
        </div>
    </div>
</header>
<nav class="menu container bg-wrap">
    <ol class="menu-wrap bg-wrap">
        <li class="home">
            <a
                    aria-label="Báo điện tử - Tin tức cập nhật liên tục 24/7"
                    href="index.jsp"
            >
                <svg
                        aria-hidden="true"
                        width="28"
                        height="28"
                        viewBox="0 0 32 32"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                >
                    <path
                            d="M16.7334 22.6665H15.2667C14.9353 22.6665 14.6667 22.3979 14.6667 22.0665V19.2665C14.6667 18.9351 14.9353 18.6665 15.2667 18.6665H16.7334C17.0647 18.6665 17.3334 18.9351 17.3334 19.2665V22.0665C17.3334 22.3979 17.0647 22.6665 16.7334 22.6665Z"
                            stroke-width="1.5"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                    />
                    <path
                            d="M4 12.6665L16 5.33317L28 12.6665"
                            stroke-width="1.5"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                    />
                    <path
                            d="M25.3334 17.3335V26.0668C25.3334 26.3982 25.0647 26.6668 24.7334 26.6668H7.26669C6.93532 26.6668 6.66669 26.3982 6.66669 26.0668V17.3335"
                            stroke-width="1.5"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                    />
                </svg>
            </a>
        </li>

        <li class="has-child">
            <a href="#">Xã hội</a>
            <ol class="submenu">
                <li><a href="#">Chính trị</a></li>
                <li><a href="#">Môi trường</a></li>
                <li><a href="#">Giao thông</a></li>
            </ol>
        </li>
        <li class="has-child">
            <a href="the-gioi.jsp">Thế giới</a>
            <ol class="submenu">
                <li><a href="#">Quân sự</a></li>
                <li>
                    <a href="#">Hồ sơ - Phân tích</a>
                </li>
                <li><a href="#">Thế giới đó đây</a></li>

                <li>
                    <a href="#"
                    >Căng thẳng Nga - Ukraine</a
                    >
                </li>
            </ol>
        </li>
        <li class="has-child">
            <a href="kinh-doanh.jsp">Kinh doanh</a>
            <ol class="submenu">
                <li><a href="#">Tài chính</a></li>

                <li><a href="#">Doanh nghiệp</a></li>
                <li><a href="#">Khởi nghiệp</a></li>
                <li><a href="#">Tiêu dùng</a></li>

            </ol>
        </li>
        <li class="has-child">
            <a href="bat-dong-san.jsp">Bất động sản</a>
            <ol class="submenu">
                <li><a href="#">Dự án</a></li>
                <li><a href="#">Thị trường</a></li>
                <li><a href="#">Nhà đất</a></li>
                <li>
                    <a href="#">Nhịp sống đô thị</a>
                </li>
                <li><a href="#">Sống xanh</a></li>
                <li><a href="#">Nội thất</a></li>
            </ol>
        </li>
        <li class="has-child">
            <a href="the-thao.jsp">Thể thao</a>
            <ol class="submenu">
                <li><a href="#">AFF Cup 2022</a></li>
                <li><a href="#">World Cup 2022</a></li>
                <li><a href="#">Bóng đá Châu Âu</a></li>
                <li><a href="#">Tennis</a></li>
                <li><a href="#">Golf</a></li>
                <li><a href="#">Võ thuật</a></li>
                <li>
                    <a href="#"
                    >Các môn Thể thao khác</a
                    >
                </li>
                <li><a href="#">Hậu trường</a></li>
                <li><a href="#">Lịch thi đấu</a></li>
            </ol>
        </li>

        <li class="menu-more">
            <svg
                    aria-hidden="true"
                    class="more"
                    width="28"
                    height="28"
                    viewBox="0 0 32 32"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
            >
                <path
                        d="M25.3333 17.3332C26.0697 17.3332 26.6667 16.7362 26.6667 15.9998C26.6667 15.2635 26.0697 14.6665 25.3333 14.6665C24.597 14.6665 24 15.2635 24 15.9998C24 16.7362 24.597 17.3332 25.3333 17.3332Z"
                        stroke-width="1.5"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                />
                <path
                        d="M16 17.3332C16.7364 17.3332 17.3333 16.7362 17.3333 15.9998C17.3333 15.2635 16.7364 14.6665 16 14.6665C15.2636 14.6665 14.6667 15.2635 14.6667 15.9998C14.6667 16.7362 15.2636 17.3332 16 17.3332Z"
                        stroke-width="1.5"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                />
                <path
                        d="M6.66667 17.3332C7.40305 17.3332 8 16.7362 8 15.9998C8 15.2635 7.40305 14.6665 6.66667 14.6665C5.93029 14.6665 5.33334 15.2635 5.33334 15.9998C5.33334 16.7362 5.93029 17.3332 6.66667 17.3332Z"
                        stroke-width="1.5"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                />
            </svg>
            <svg
                    aria-hidden="true"
                    class="close"
                    width="28"
                    height="28"
                    viewBox="0 0 32 32"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
            >
                <path
                        d="M16 29.3332C23.3638 29.3332 29.3333 23.3636 29.3333 15.9998C29.3333 8.63604 23.3638 2.6665 16 2.6665C8.63621 2.6665 2.66667 8.63604 2.66667 15.9998C2.66667 23.3636 8.63621 29.3332 16 29.3332Z"
                        stroke-width="1.5"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                />
                <path
                        d="M20 12L12 20"
                        stroke-width="1.5"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                />
                <path
                        d="M12 12L20 20"
                        stroke-width="1.5"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                />
            </svg>
        </li>
    </ol>
    
</nav>
<main class="body container">
    <div class="grid highlight">
        <article class="article highlight">
            <article
                    class="article-item"
                    data-content-name="home-highlights"
                    data-content-piece="home-highlights-position_1"
                    data-content-target="/the-gioi/chien-thuat-cua-nga-khi-dua-50-xe-tang-sat-thu-chien-truong-toi-donbass-20221224083224103.htm"
                    data-track-content=""
            >
                <div class="article-thumb">
                    <a
                            href="the-gioi/chien-thuat-cua-nga-khi-dua-50-xe-tang-sat-thu-chien-truong-toi-donbass-20221224083224103.jsp"
                    >
                        <img
                                alt="Chiến thuật của Nga khi đưa 50 xe tăng &#34;sát thủ chiến trường&#34; tới Donbass"
                                height="344"
                                src="../icdn/zoom/516_344/2022/12/24/t90-1505122875203-crop-1671845381239.png"
                                srcset="
                    https://icdn.dantri.com.vn/zoom/516_344/2022/12/24/t90-1505122875203-crop-1671845381239.jpeg  1x,
                    https://icdn.dantri.com.vn/zoom/1032_688/2022/12/24/t90-1505122875203-crop-1671845381239.jpeg 2x
                  "
                                width="516"
                        />
                    </a>
                </div>
                <div class="article-content">
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Chiến thuật của Nga khi đưa 50 xe tăng &quot;sát thủ chiến
                            trường&quot; tới Donbass</a
                        >
                    </h3>
                    <div class="article-excerpt">
                        <a
                                href="#"
                        >
                            Các nguồn tin từ hiện trường nói rằng Nga đã đưa 50 chiếc T-90
                            - xe tăng hiện đại hàng đầu - tới một khu vực tương đối nhỏ ở
                            Donbass, nơi các cuộc giao tranh quyết liệt với Ukraine đang
                            diễn ra.
                        </a>
                    </div>
                </div>
            </article>
            <article
                    class="article-item"
                    data-content-name="home-highlights"
                    data-content-piece="home-highlights-position_2"
                    data-track-content=""
            >
                <div class="article-thumb">
                    <a
                            href="#"
                    >
                        <img
                                alt="Không khí người dân đón Giáng sinh vui tươi, ấm áp trên khắp cả nước"
                                height="156"
                                src="../icdn/zoom/234_156/2022/12/24/dem-giang-sinh-35-edited-1671898569998.png"
                                srcset="
                    https://icdn.dantri.com.vn/zoom/234_156/2022/12/24/dem-giang-sinh-35-edited-1671898569998.jpeg 1x,
                    https://icdn.dantri.com.vn/zoom/468_312/2022/12/24/dem-giang-sinh-35-edited-1671898569998.jpeg 2x
                  "
                                width="234"
                        />
                    </a>
                </div>
                <h3 class="article-title">
                    <a
                            href="#"
                    >Không khí người dân đón Giáng sinh vui tươi, ấm áp trên khắp cả
                        nước</a
                    >
                </h3>
            </article>

        </article>
        <article class="article special">
            <article
                    class="article-item"
                    data-content-name="home-specials"
                    data-content-piece="home-specials-position_1"
                    data-track-content=""
            >
                <div class="article-container">
                    <div class="article-content">
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Truyền thông về người tốt, việc tốt là một sứ mệnh lớn lao
                                của báo chí</a
                            >
                        </h3>
                    </div>
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="Truyền thông về người tốt, việc tốt là một sứ mệnh lớn lao của báo chí"
                                    height="80"
                                    src="../icdn/zoom/120_80/2022/12/24/nguyen-thanh-lam-2-crop-1671883425591.png"
                                    srcset="
                      https://icdn.dantri.com.vn/zoom/120_80/2022/12/24/nguyen-thanh-lam-2-crop-1671883425591.jpeg  1x,
                      https://icdn.dantri.com.vn/zoom/240_160/2022/12/24/nguyen-thanh-lam-2-crop-1671883425591.jpeg 2x
                    "
                                    width="120"
                            />
                        </a>
                    </div>
                </div>
            </article>
            <article
                    class="article-item"
                    data-content-name="home-specials"
                    data-content-piece="home-specials-position_2"
                    data-track-content=""
            >
                <div class="article-container">
                    <div class="article-content">
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >5 vũ khí đáng chú ý trong gói viện trợ mới của Mỹ cho
                                Ukraine</a
                            >
                        </h3>
                    </div>
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="5 vũ khí đáng chú ý trong gói viện trợ mới của Mỹ cho Ukraine"
                                    height="80"
                                    src="../icdn/zoom/120_80/2022/12/24/5-vu-khi-dang-chu-y-trong-goi-vien-tro-moi-cua-my-cho-ukraine-3-edited-crop-1671895534677.jpg"
                                    srcset="
                      https://icdn.dantri.com.vn/zoom/120_80/2022/12/24/5-vu-khi-dang-chu-y-trong-goi-vien-tro-moi-cua-my-cho-ukraine-3-edited-crop-1671895534677.jpeg  1x,
                      https://icdn.dantri.com.vn/zoom/240_160/2022/12/24/5-vu-khi-dang-chu-y-trong-goi-vien-tro-moi-cua-my-cho-ukraine-3-edited-crop-1671895534677.jpeg 2x
                    "
                                    width="120"
                            />
                        </a>
                    </div>
                </div>
            </article>
            <article
                    class="article-item"
                    data-content-name="home-specials"
                    data-content-piece="home-specials-position_3"
                    data-content-target="#"
                    data-track-content=""
            >
                <div class="article-container">
                    <div class="article-content">
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Khởi công Nhà ga T3 sân bay Tân Sơn Nhất</a
                            >
                        </h3>
                    </div>
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="Khởi công Nhà ga T3 sân bay Tân Sơn Nhất"
                                    height="80"
                                    src="../icdn/zoom/120_80/2022/12/24/nha-1-crop-1671887218413.jpg"
                                    srcset="
                      https://icdn.dantri.com.vn/zoom/120_80/2022/12/24/nha-1-crop-1671887218413.jpeg  1x,
                      https://icdn.dantri.com.vn/zoom/240_160/2022/12/24/nha-1-crop-1671887218413.jpeg 2x
                    "
                                    width="120"
                            />
                        </a>
                    </div>
                </div>
            </article>
            <article
                    class="article-item blog"
                    data-content-name="home-specials"
                    data-content-piece="home-specials-position_4"
                    data-track-content=""
            >
                <div class="article-container">
                    <div class="article-content">
                        <div class="article-category blog">
                            <a href="#"
                            ><i class="logo-article logo-blog"></i
                            ></a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Khi số thu ngân sách vượt gần 20% dự toán</a
                            >
                        </h3>
                    </div>
                    <div class="article-avatar">
                        <a href="#/Home">
                            <i
                                    style="
                      background-image: url(https://icdn.dantri.com.vn/zoom/88_88/2022/06/12/bich-diep-1655011205498.jpg;
                  "
                            >
                            </i>
                        </a>
                    </div>
                    <div class="article-bottom">
                        <div
                                class="article-comment flex-jcc"
                                data-id="20221223200513661"
                        >
                            <svg
                                    aria-hidden="true"
                                    width="16"
                                    height="17"
                                    viewBox="0 0 16 17"
                                    fill="none"
                                    xmlns="http://www.w3.org/2000/svg"
                            >
                                <path
                                        d="M14.5 1H1.5C0.948 1 0.5 1.448 0.5 2V12C0.5 12.552 0.948 13 1.5 13H5.5L8 16L10.5 13H14.5C15.052 13 15.5 12.552 15.5 12V2C15.5 1.448 15.052 1 14.5 1Z"
                                        stroke="#212121"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                ></path>
                                <path
                                        d="M3.5 5H12.5"
                                        stroke="#212121"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                ></path>
                                <path
                                        d="M3.5 9H12.5"
                                        stroke="#212121"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                ></path>
                                <defs>
                                    <rect
                                            width="16"
                                            height="16"
                                            fill="white"
                                            transform="translate(0 0.5)"
                                    ></rect>
                                </defs>
                            </svg>
                            <span
                                    class="article-total-comment"
                                    data-id="20221223200513661"
                            >0</span
                            >
                        </div>

                    </div>
                </div>
            </article>
        </article>
    </div>
    <div class="grid hot">
        <article class="article spotlight">
            <div class="title"><span>Spotlight</span></div>
            <article
                    class="article-item"
                    data-content-name="home-top-spotlights"
                    data-content-piece="home-top-spotlights-position_1"
                    data-track-content=""
            >
                <div class="article-thumb">
                    <a
                            href="#"
                    >
                        <img
                                alt="Khu vực trung tâm, xóm đạo ở TPHCM kẹt cứng trong đêm Noel"
                                data-src="https://icdn.dantri.com.vn/zoom/234_156/2022/12/24/z39856567117166098bf46afbd8132b32adb6f9b783522-edited-1671887844602.jpeg"
                                data-srcset="https://icdn.dantri.com.vn/zoom/234_156/2022/12/24/z39856567117166098bf46afbd8132b32adb6f9b783522-edited-1671887844602.jpeg 1x, https://icdn.dantri.com.vn/zoom/468_312/2022/12/24/z39856567117166098bf46afbd8132b32adb6f9b783522-edited-1671887844602.jpeg 2x"
                                height="156"
                                src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 234 156'%2F%3E"
                                width="234"
                        />
                    </a>
                </div>
                <div class="article-category photostory">
                    <a href="photo-story.html">
                        <i class="logo-article logo-photostory"></i>
                    </a>
                </div>
                <h3 class="article-title">
                    <a
                            href="#"
                    >Khu vực trung tâm, xóm đạo ở TPHCM kẹt cứng trong đêm Noel</a
                    >
                </h3>
            </article>

        </article>
        <article class="article-hot">
            <article
                    class="article-item"
                    data-content-name="home-events"
                    data-content-piece="home-events-position_1"
                    data-track-content=""
            >
                <div class="article-thumb">
                    <a
                            href="#"
                    >
                        <img
                                alt="Đại thắng 5-0 trước Lào, Malaysia gửi lời thách thức tới Việt Nam"
                                data-src="https://icdn.dantri.com.vn/zoom/150_100/2022/12/24/fasas1671892395-crop-1671892994088.jpeg"
                                data-srcset="https://icdn.dantri.com.vn/zoom/150_100/2022/12/24/fasas1671892395-crop-1671892994088.jpeg 1x, https://icdn.dantri.com.vn/zoom/300_200/2022/12/24/fasas1671892395-crop-1671892994088.jpeg 2x"
                                height="100"
                                src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 150 100'%2F%3E"
                                width="150"
                        />
                        <div class="article-ico"><i class="video"></i></div>
                    </a>
                </div>
                <h3 class="article-title">
                    <a
                            href="#"
                    >Đại thắng 5-0 trước Lào, Malaysia gửi lời thách thức tới Việt
                        Nam</a
                    >
                </h3>
            </article>
            <article
                    class="article-item"
                    data-content-name="home-events"
                    data-content-piece="home-events-position_2"
                    data-track-content=""
            >
                <div class="article-thumb">
                    <a
                            href="#"
                    >
                        <img
                                alt="Phi công Ukraine nói có cách bắt bài tên lửa siêu vượt âm sát thủ của Nga"
                                data-src="https://icdn.dantri.com.vn/zoom/150_100/2022/12/24/0x0-crop-1671872499113.jpeg"
                                data-srcset="https://icdn.dantri.com.vn/zoom/150_100/2022/12/24/0x0-crop-1671872499113.jpeg 1x, https://icdn.dantri.com.vn/zoom/300_200/2022/12/24/0x0-crop-1671872499113.jpeg 2x"
                                height="100"
                                src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 150 100'%2F%3E"
                                width="150"
                        />
                    </a>
                </div>
                <h3 class="article-title">
                    <a
                            href="#"
                    >Phi công Ukraine nói có cách bắt bài tên lửa siêu vượt âm sát
                        thủ của Nga</a
                    >
                </h3>
            </article>

            <article
                    class="article-item"
                    data-content-name="home-events"
                    data-content-piece="home-events-position_4"
                    data-track-content=""
            >
                <div class="article-thumb">
                    <a
                            href="#"
                    >
                        <img
                                alt="Top 10 ngôi sao tăng giá mạnh nhất sau World Cup 2022"
                                data-src="https://icdn.dantri.com.vn/zoom/150_100/2022/12/24/9bd8795b10e8bf5c8df20a42e37cb3a6-crop-crop-1671886549163.jpeg"
                                data-srcset="https://icdn.dantri.com.vn/zoom/150_100/2022/12/24/9bd8795b10e8bf5c8df20a42e37cb3a6-crop-crop-1671886549163.jpeg 1x, https://icdn.dantri.com.vn/zoom/300_200/2022/12/24/9bd8795b10e8bf5c8df20a42e37cb3a6-crop-crop-1671886549163.jpeg 2x"
                                height="100"
                                src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 150 100'%2F%3E"
                                width="150"
                        />
                    </a>
                </div>
                <h3 class="article-title">
                    <a
                            href="#"
                    >Top 10 ngôi sao tăng giá mạnh nhất sau World Cup 2022</a
                    >
                </h3>
            </article>

        </article>

    </div>
    <div id="desktop-TTSK"></div>
    <div class="grid normal">
        <article class="article-list">
            <article
                    class="article-item"
                    data-content-name="home-category_highlights"
                    data-content-piece="home-category_highlights-position_1"
                    data-track-content=""
            >
                <div class="article-thumb">
                    <a
                            href="#"
                    >
                        <img
                                alt="Cục hàng không tăng cường các chuyến bay trên cả nước vào dịp Tết"
                                data-src="https://icdn.dantri.com.vn/zoom/233_155/2021/12/21/hangkhong-crop-1640021003113.jpeg"
                                data-srcset="https://icdn.dantri.com.vn/zoom/233_155/2021/12/21/hangkhong-crop-1640021003113.jpeg 1x, https://icdn.dantri.com.vn/zoom/466_310/2021/12/21/hangkhong-crop-1640021003113.jpeg 2x"
                                height="155"
                                src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 233 155'%2F%3E"
                                width="233"
                        />
                    </a>
                </div>
                <div class="article-content">
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Cục hàng không tăng cường các chuyến bay trên cả nước vào dịp
                            Tết</a
                        >
                    </h3>
                    <div class="article-excerpt">
                        <a
                                href="#"
                        >
                            Mới đây, Cục Hàng không Việt Nam vừa quyết định tăng cường các
                            chuyến bay dịp Tết trên cả nước.
                        </a>
                    </div>
                </div>
            </article>
            <article
                    class="article-item"
                    data-content-name="home-category_highlights"
                    data-content-piece="home-category_highlights-position_2"
                    data-content-target="/the-gioi/trung-quoc-phan-doi-dao-luat-ngan-sach-quoc-phong-moi-cua-my-20221224190411575.htm"
                    data-track-content=""
            >
                <div class="article-thumb">
                    <a
                            href="#"
                    >
                        <img
                                alt="Trung Quốc phản đối Đạo luật ngân sách quốc phòng mới của Mỹ"
                                data-src="https://icdn.dantri.com.vn/zoom/233_155/2022/12/24/trung-quoc-phan-doi-dao-luat-ngan-sach-quoc-phong-moi-cua-my-crop-1671883382185.jpeg"
                                data-srcset="https://icdn.dantri.com.vn/zoom/233_155/2022/12/24/trung-quoc-phan-doi-dao-luat-ngan-sach-quoc-phong-moi-cua-my-crop-1671883382185.jpeg 1x, https://icdn.dantri.com.vn/zoom/466_310/2022/12/24/trung-quoc-phan-doi-dao-luat-ngan-sach-quoc-phong-moi-cua-my-crop-1671883382185.jpeg 2x"
                                height="155"
                                src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 233 155'%2F%3E"
                                width="233"
                        />
                    </a>
                </div>
                <div class="article-content">
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Trung Quốc phản đối Đạo luật ngân sách quốc phòng mới của
                            Mỹ</a
                        >
                    </h3>
                    <div class="article-excerpt">
                        <a
                                href="#"
                        >
                            Trung Quốc đã bày tỏ sự phản đối gay gắt với việc Quốc hội Mỹ
                            thông qua Đạo luật ngân sách quốc phòng cho...
                        </a>
                    </div>
                </div>
            </article>
            <article
                    class="article-item"
                    data-content-name="home-category_highlights"
                    data-content-piece="home-category_highlights-position_3"
                    data-content-target="/kinh-doanh/thanh-tra-xang-dau-vach-ra-mot-loat-sai-pham-co-ca-loi-cua-nha-quan-ly-20221224100422289.htm"
                    data-track-content=""
            >
                <div class="article-thumb">
                    <a
                            href="#"
                    >
                        <img
                                alt="Thanh tra xăng dầu: Vạch ra một loạt sai phạm, có cả lỗi của nhà quản lý"
                                data-src="https://icdn.dantri.com.vn/zoom/233_155/2022/11/11/z3872881902110dbc5f49927d3ddcbff0dbfe18253ce8c-1668164142838.jpg"
                                data-srcset="https://icdn.dantri.com.vn/zoom/233_155/2022/11/11/z3872881902110dbc5f49927d3ddcbff0dbfe18253ce8c-1668164142838.jpg 1x, https://icdn.dantri.com.vn/zoom/466_310/2022/11/11/z3872881902110dbc5f49927d3ddcbff0dbfe18253ce8c-1668164142838.jpg 2x"
                                height="155"
                                src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 233 155'%2F%3E"
                                width="233"
                        />
                    </a>
                </div>
                <div class="article-content">
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Thanh tra xăng dầu: Vạch ra một loạt sai phạm, có cả lỗi của
                            nhà quản lý</a
                        >
                    </h3>
                    <div class="article-excerpt">
                        <a
                                href="#"
                        >
                            Kết luận của Thanh tra Bộ Công Thương chỉ ra loạt tồn tại, hạn
                            chế, thiếu sót, vi phạm của các thương nhân đầu...
                        </a>
                    </div>
                </div>
            </article>
            <article
                    class="article-item"
                    data-content-name="home-category_highlights"
                    data-content-piece="home-category_highlights-position_4"
                    data-content-target="/bat-dong-san/can-ho-chung-cu-di-nguoc-lan-song-cat-lo-20221224095943188.htm"
                    data-track-content=""
            >
                <div class="article-thumb">
                    <a
                            href="#"
                    >
                        <img
                                alt="Căn hộ chung cư đi ngược làn sóng cắt lỗ"
                                data-src="https://icdn.dantri.com.vn/zoom/233_155/2022/12/24/3093983198283965949535934816610527942469677n-edited-1671850656149.jpeg"
                                data-srcset="https://icdn.dantri.com.vn/zoom/233_155/2022/12/24/3093983198283965949535934816610527942469677n-edited-1671850656149.jpeg 1x, https://icdn.dantri.com.vn/zoom/466_310/2022/12/24/3093983198283965949535934816610527942469677n-edited-1671850656149.jpeg 2x"
                                height="155"
                                src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 233 155'%2F%3E"
                                width="233"
                        />
                    </a>
                </div>
                <div class="article-content">
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Căn hộ chung cư đi ngược làn sóng cắt lỗ</a
                        >
                    </h3>
                    <div class="article-excerpt">
                        <a
                                href="#"
                        >
                            Đi ngược làn sóng cắt lỗ, giảm giá của nhiều sản phẩm bất động
                            sản có tính đầu cơ, căn hộ chung cư thời...
                        </a>
                    </div>
                </div>
            </article>
            <article
                    class="article-item"
                    data-content-name="home-category_highlights"
                    data-content-piece="home-category_highlights-position_5"
                    data-content-target="/the-thao/quang-hai-chay-dua-voi-thoi-gian-truoc-tran-gap-malaysia-20221224200553135.htm"
                    data-track-content=""
            >
                <div class="article-thumb">
                    <a
                            href="#"
                    >
                        <img
                                alt="Quang Hải chạy đua với thời gian trước trận gặp Malaysia"
                                data-src="https://icdn.dantri.com.vn/zoom/233_155/2022/12/24/dtvn-tap-chieu-24-crop-1671887068773.jpeg"
                                data-srcset="https://icdn.dantri.com.vn/zoom/233_155/2022/12/24/dtvn-tap-chieu-24-crop-1671887068773.jpeg 1x, https://icdn.dantri.com.vn/zoom/466_310/2022/12/24/dtvn-tap-chieu-24-crop-1671887068773.jpeg 2x"
                                height="155"
                                src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 233 155'%2F%3E"
                                width="233"
                        />
                    </a>
                </div>
                <div class="article-content">
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Quang Hải chạy đua với thời gian trước trận gặp Malaysia</a
                        >
                    </h3>
                    <div class="article-excerpt">
                        <a
                                href="#"
                        >
                            Tiền vệ Nguyễn Quang Hải trở lại tập luyện nhưng anh vẫn phải
                            tập riêng cùng bác sĩ. Tiền vệ tuyển Việt Nam chạy...
                        </a>
                    </div>
                </div>
            </article>
            <div id="desktop-home-middle-left-1" class="mdbl"></div>

            <div id="desktop-home-middle-left-2" class="mdbl"></div>


            <div id="desktop-home-middle-left-3" class="mdbl"></div>




            <div id="desktop-home-middle-left-4" class="mdbl"></div>
            <article
                    class="article-item"
                    data-content-name="home-category_highlights"
                    data-content-piece="home-category_highlights-position_20"
                    data-track-content=""
            >
                <div class="article-thumb">
                    <a
                            href="#"
                    >
                        <img
                                alt="Con người có thể khám phá vũ trụ mà không cần bay lên bầu trời"
                                data-src="https://icdn.dantri.com.vn/zoom/233_155/2022/12/24/robot-crop-1671826431963.jpeg"
                                data-srcset="https://icdn.dantri.com.vn/zoom/233_155/2022/12/24/robot-crop-1671826431963.jpeg 1x, https://icdn.dantri.com.vn/zoom/466_310/2022/12/24/robot-crop-1671826431963.jpeg 2x"
                                height="155"
                                src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 233 155'%2F%3E"
                                width="233"
                        />
                    </a>
                </div>
                <div class="article-content">
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Con người có thể khám phá vũ trụ mà không cần bay lên bầu
                            trời</a
                        >
                    </h3>
                    <div class="article-excerpt">
                        <a
                                href="#"
                        >
                            Các nhà khoa học hành tinh đang tìm ra những cách mới để sử
                            dụng máy học, từ đó hỗ trợ cho quá trình...
                        </a>
                    </div>
                </div>
            </article>
            <article
                    class="article-item"
                    data-content-name="home-category_highlights"
                    data-content-piece="home-category_highlights-position_21"
                    data-track-content=""
            >
                <div class="article-thumb">
                    <a
                            href="#"
                    >
                        <img
                                alt="Khi số thu ngân sách vượt gần 20% dự toán"
                                data-src="https://icdn.dantri.com.vn/zoom/233_155/2021/10/28/tienluongtien-tuan-1635411198808.jpeg"
                                data-srcset="https://icdn.dantri.com.vn/zoom/233_155/2021/10/28/tienluongtien-tuan-1635411198808.jpeg 1x, https://icdn.dantri.com.vn/zoom/466_310/2021/10/28/tienluongtien-tuan-1635411198808.jpeg 2x"
                                height="155"
                                src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 233 155'%2F%3E"
                                width="233"
                        />
                    </a>
                </div>
                <div class="article-content">
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Khi số thu ngân sách vượt gần 20% dự toán</a
                        >
                    </h3>
                    <div class="article-excerpt">
                        <a
                                href="#"
                        >
                            Nhiều người không khỏi băn khoăn, trong bối cảnh đi đâu cũng
                            đều nghe doanh nghiệp kêu khó, vì sao thu ngân sách có...
                        </a>
                    </div>
                </div>
            </article>
            <article
                    class="article-item"
                    data-content-name="home-category_highlights"
                    data-content-piece="home-category_highlights-position_22"
                    data-track-content=""
            >
                <div class="article-thumb">
                    <a
                            href="#"
                    >
                        <img
                                alt="Vụ mất 25 cuốn sách cổ quý hiếm: Trách nhiệm của tổ chức, cá nhân thế nào?"
                                data-src="https://icdn.dantri.com.vn/zoom/233_155/2022/12/24/25-cuon-sach-tai-vien-nghien-cuu-han-nom-bi-that-thoatdocx-1671612197980-crop-1671870963750.jpeg"
                                data-srcset="https://icdn.dantri.com.vn/zoom/233_155/2022/12/24/25-cuon-sach-tai-vien-nghien-cuu-han-nom-bi-that-thoatdocx-1671612197980-crop-1671870963750.jpeg 1x, https://icdn.dantri.com.vn/zoom/466_310/2022/12/24/25-cuon-sach-tai-vien-nghien-cuu-han-nom-bi-that-thoatdocx-1671612197980-crop-1671870963750.jpeg 2x"
                                height="155"
                                src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 233 155'%2F%3E"
                                width="233"
                        />
                    </a>
                </div>
                <div class="article-content">
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Vụ mất 25 cuốn sách cổ quý hiếm: Trách nhiệm của tổ chức, cá
                            nhân thế nào?</a
                        >
                    </h3>
                    <div class="article-excerpt">
                        <a
                                href="#"
                        >
                            Nếu trong quá trình điều tra, xác minh làm rõ, có căn cứ chứng
                            minh các cá nhân có hành vi vi phạm nội...
                        </a>
                    </div>
                </div>
            </article>
            <article
                    class="article-item"
                    data-content-name="home-category_highlights"
                    data-content-piece="home-category_highlights-position_23"
                    data-track-content=""
            >
                <div class="article-thumb">
                    <a
                            href="#"
                    >
                        <img
                                alt="Thế trận giằng co trên chiến trường Ukraine sau 10 tháng xung đột khốc liệt"
                                data-src="https://icdn.dantri.com.vn/zoom/233_155/2022/12/23/binhsiukrainerocketdonetskreuters-crop-1671785851690.jpeg"
                                data-srcset="https://icdn.dantri.com.vn/zoom/233_155/2022/12/23/binhsiukrainerocketdonetskreuters-crop-1671785851690.jpeg 1x, https://icdn.dantri.com.vn/zoom/466_310/2022/12/23/binhsiukrainerocketdonetskreuters-crop-1671785851690.jpeg 2x"
                                height="155"
                                src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 233 155'%2F%3E"
                                width="233"
                        />
                    </a>
                </div>
                <div class="article-content">
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Thế trận giằng co trên chiến trường Ukraine sau 10 tháng xung
                            đột khốc liệt</a
                        >
                    </h3>
                    <div class="article-excerpt">
                        <a
                                href="#"
                        >
                            Khi xung đột sắp bước sang năm thứ hai, Kiev sẽ gặp nhiều
                            thách thức hơn trong việc giành lại lãnh thổ, trong bối...
                        </a>
                    </div>
                </div>
            </article>
            <article
                    class="article-item"
                    data-content-name="home-category_highlights"
                    data-content-piece="home-category_highlights-position_24"
                    data-track-content=""
            >
                <div class="article-thumb">
                    <a
                            href="#"
                    >
                        <img
                                alt="Khu vực trung tâm, xóm đạo ở TPHCM kẹt cứng trong đêm Noel"
                                data-src="https://icdn.dantri.com.vn/zoom/233_155/2022/12/24/z39856567117166098bf46afbd8132b32adb6f9b783522-edited-1671887844602.jpeg"
                                data-srcset="https://icdn.dantri.com.vn/zoom/233_155/2022/12/24/z39856567117166098bf46afbd8132b32adb6f9b783522-edited-1671887844602.jpeg 1x, https://icdn.dantri.com.vn/zoom/466_310/2022/12/24/z39856567117166098bf46afbd8132b32adb6f9b783522-edited-1671887844602.jpeg 2x"
                                height="155"
                                src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 233 155'%2F%3E"
                                width="233"
                        />
                    </a>
                </div>
                <div class="article-content">
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Khu vực trung tâm, xóm đạo ở TPHCM kẹt cứng trong đêm Noel</a
                        >
                    </h3>
                    <div class="article-excerpt">
                        <a
                                href="#"
                        >
                            Nhiều tuyến đường ở khu vực trung tâm TPHCM như: Lê Thánh Tôn,
                            Tôn Đức Thắng, Hai Bà Trưng, Lê Duẩn... và xóm đạo...
                        </a>
                    </div>
                </div>
            </article>
        </article>
        <div class="category">
            <div class="category-wrap">
                <div class="category-head">
                    <h2 class="title"><a href="#">Xã hội</a></h2>
                    <ol class="category-nav">
                        <li><a href="#">Chính trị</a></li>

                        <li><a href="#">Môi trường</a></li>
                    </ol>
                </div>
                <div class="category-container">
                    <article
                            class="article-item"
                            data-content-name="home-category_20"
                            data-content-piece="home-category_20-position_1"
                            data-content-target="#"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Bình luận &#34;1 tỷ đồng nhét túi&#34;, nam thanh niên bị phạt 5 triệu đồng"
                                        data-src="https://icdn.dantri.com.vn/zoom/192_128/2022/12/24/an-ninh-manglam-dong2022cong-an-cung-cap2-crop-1671856786236.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/192_128/2022/12/24/an-ninh-manglam-dong2022cong-an-cung-cap2-crop-1671856786236.jpeg 1x, https://icdn.dantri.com.vn/zoom/384_256/2022/12/24/an-ninh-manglam-dong2022cong-an-cung-cap2-crop-1671856786236.jpeg 2x"
                                        height="128"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 192 128'%2F%3E"
                                        width="192"
                                />
                            </a>
                        </div>
                        <div class="article-content">
                            <h3 class="article-title">
                                <a
                                        href="#"
                                >Bình luận &quot;1 tỷ đồng nhét túi&quot;, nam thanh niên
                                    bị phạt 5 triệu đồng</a
                                >
                            </h3>
                            <div class="article-excerpt">
                                <a
                                        href="#"
                                >
                                    Đọc được tin tức TP Bảo Lộc (Lâm Đồng) chi 1,3 tỷ đồng
                                    chỉnh trang đô thị, nam thanh niên đã bình luận dưới...
                                </a>
                            </div>
                        </div>
                    </article>

                    <article
                            class="article-item"
                            data-content-name="home-category_20"
                            data-content-piece="home-category_20-position_3"
                            data-content-target="/#"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Khu vực trung tâm, xóm đạo ở TPHCM kẹt cứng trong đêm Noel"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/z39856567117166098bf46afbd8132b32adb6f9b783522-edited-1671887844602.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/z39856567117166098bf46afbd8132b32adb6f9b783522-edited-1671887844602.jpeg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/24/z39856567117166098bf46afbd8132b32adb6f9b783522-edited-1671887844602.jpeg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Khu vực trung tâm, xóm đạo ở TPHCM kẹt cứng trong đêm
                                Noel</a
                            >
                        </h3>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_20"
                            data-content-piece="home-category_20-position_4"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Khởi công Nhà ga T3 sân bay Tân Sơn Nhất"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/nha-1-crop-1671887218413.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/nha-1-crop-1671887218413.jpeg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/24/nha-1-crop-1671887218413.jpeg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Khởi công Nhà ga T3 sân bay Tân Sơn Nhất</a
                            >
                        </h3>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_20"
                            data-content-piece="home-category_20-position_5"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Không khí người dân đón Giáng sinh vui tươi, ấm áp trên khắp cả nước"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/dem-giang-sinh-35-edited-1671898569998.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/dem-giang-sinh-35-edited-1671898569998.jpeg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/24/dem-giang-sinh-35-edited-1671898569998.jpeg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Không khí người dân đón Giáng sinh vui tươi, ấm áp trên
                                khắp cả nước</a
                            >
                        </h3>
                    </article>
                </div>
            </div>
            <div class="category-wrap line">
                <div class="category-head">
                    <h2 class="title"><a href="the-gioi.jsp">Thế giới</a></h2>
                    <ol class="category-nav">
                        <li><a href="#">Quân sự</a></li>

                        <li>
                            <a href="#"
                            >Căng thẳng Nga - Ukraine</a
                            >
                        </li>
                    </ol>
                </div>
                <div class="category-container">
                    <article
                            class="article-item"
                            data-content-name="home-category_36"
                            data-content-piece="home-category_36-position_1"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="5 vũ khí đáng chú ý trong gói viện trợ mới của Mỹ cho Ukraine"
                                        data-src="https://icdn.dantri.com.vn/zoom/192_128/2022/12/24/5-vu-khi-dang-chu-y-trong-goi-vien-tro-moi-cua-my-cho-ukraine-3-edited-crop-1671895534677.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/192_128/2022/12/24/5-vu-khi-dang-chu-y-trong-goi-vien-tro-moi-cua-my-cho-ukraine-3-edited-crop-1671895534677.jpeg 1x, https://icdn.dantri.com.vn/zoom/384_256/2022/12/24/5-vu-khi-dang-chu-y-trong-goi-vien-tro-moi-cua-my-cho-ukraine-3-edited-crop-1671895534677.jpeg 2x"
                                        height="128"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 192 128'%2F%3E"
                                        width="192"
                                />
                            </a>
                        </div>
                        <div class="article-content">
                            <h3 class="article-title">
                                <a
                                        href="#"
                                >5 vũ khí đáng chú ý trong gói viện trợ mới của Mỹ cho
                                    Ukraine</a
                                >
                            </h3>
                            <div class="article-excerpt">
                                <a
                                        href="#"
                                >
                                    Với gói viện trợ mới trị giá 1,85 tỷ USD, Mỹ lần đầu tiên
                                    cung cấp cho Ukraine tổ hợp tên lửa phòng không...
                                </a>
                            </div>
                        </div>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_36"
                            data-content-piece="home-category_36-position_2"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Không khí Giáng sinh ngập tràn khắp thế giới"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/2022-12-22t172111z424632770rc25by98jm27rtrmadp3christmas-season-lebanon-crop-1671892395185.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/2022-12-22t172111z424632770rc25by98jm27rtrmadp3christmas-season-lebanon-crop-1671892395185.jpeg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/24/2022-12-22t172111z424632770rc25by98jm27rtrmadp3christmas-season-lebanon-crop-1671892395185.jpeg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                                <div class="article-ico"><i class="photo"></i></div>
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Không khí Giáng sinh ngập tràn khắp thế giới</a
                            >
                        </h3>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_36"
                            data-content-piece="home-category_36-position_3"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Chiến thuật của Nga khi đưa 50 xe tăng &#34;sát thủ chiến trường&#34; tới Donbass"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/t90-1505122875203-crop-1671845381239.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/t90-1505122875203-crop-1671845381239.jpeg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/24/t90-1505122875203-crop-1671845381239.jpeg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Chiến thuật của Nga khi đưa 50 xe tăng &quot;sát thủ chiến
                                trường&quot; tới Donbass</a
                            >
                        </h3>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_36"
                            data-content-piece="home-category_36-position_4"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Xả súng trước thềm Giáng sinh tại trung tâm thương mại lớn nhất nước Mỹ"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/xa-sung-truoc-them-giang-sinh-tai-trung-tam-thuong-mai-lon-nhat-nuoc-mydocx-1671872585005.png"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/xa-sung-truoc-them-giang-sinh-tai-trung-tam-thuong-mai-lon-nhat-nuoc-mydocx-1671872585005.png 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/24/xa-sung-truoc-them-giang-sinh-tai-trung-tam-thuong-mai-lon-nhat-nuoc-mydocx-1671872585005.png 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Xả súng trước thềm Giáng sinh tại trung tâm thương mại lớn
                                nhất nước Mỹ</a
                            >
                        </h3>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_36"
                            data-content-piece="home-category_36-position_5"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Ukraine cáo buộc Nga tấn công dữ dội ngay trước Giáng sinh"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/nga-don-dap-tap-kich-ukraine-truoc-them-giang-sinh-crop-1671878808046.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/nga-don-dap-tap-kich-ukraine-truoc-them-giang-sinh-crop-1671878808046.jpeg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/24/nga-don-dap-tap-kich-ukraine-truoc-them-giang-sinh-crop-1671878808046.jpeg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Ukraine cáo buộc Nga tấn công dữ dội ngay trước Giáng
                                sinh</a
                            >
                        </h3>
                    </article>
                </div>
            </div>
            <div class="category-wrap line">
                <div class="category-head">
                    <h2 class="title"><a href="kinh-doanh.jsp">Kinh doanh</a></h2>
                    <ol class="category-nav">
                        <li><a href="#">Tài chính</a></li>

                        <li><a href="#">Doanh nghiệp</a></li>
                    </ol>
                </div>
                <div class="category-container">
                    <article
                            class="article-item"
                            data-content-name="home-category_76"
                            data-content-piece="home-category_76-position_1"
                            data-content-target="/kinh-doanh/thu-tuong-chi-dao-bo-cong-thuong-khong-de-thieu-hut-xang-dau-dip-tet-20221224162858354.htm"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Thủ tướng chỉ đạo Bộ Công Thương không để thiếu hụt xăng dầu dịp Tết"
                                        data-src="https://icdn.dantri.com.vn/zoom/192_128/2022/12/24/do-xang18-1645277835784-1671873913119.jpg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/192_128/2022/12/24/do-xang18-1645277835784-1671873913119.jpg 1x, https://icdn.dantri.com.vn/zoom/384_256/2022/12/24/do-xang18-1645277835784-1671873913119.jpg 2x"
                                        height="128"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 192 128'%2F%3E"
                                        width="192"
                                />
                            </a>
                        </div>
                        <div class="article-content">
                            <h3 class="article-title">
                                <a
                                        href="#"
                                >Thủ tướng chỉ đạo Bộ Công Thương không để thiếu hụt xăng
                                    dầu dịp Tết</a
                                >
                            </h3>
                            <div class="article-excerpt">
                                <a
                                        href="#"
                                >
                                    Thủ tướng Phạm Minh Chính giao Bộ Công Thương chỉ đạo các
                                    doanh nghiệp, đơn vị bảo đảm nguồn cung xăng dầu cho
                                    thị...
                                </a>
                            </div>
                        </div>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_76"
                            data-content-piece="home-category_76-position_2"
                            data-content-target="/kinh-doanh/khach-bat-ngo-bi-rut-tien-khoi-the-tin-dung-chuyen-gia-chi-meo-phong-tranh-20221223123311491.htm"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Khách bất ngờ bị rút tiền khỏi thẻ tín dụng, chuyên gia chỉ mẹo phòng tránh"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/dsc04910-edited-1671816019792.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/dsc04910-edited-1671816019792.jpeg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/24/dsc04910-edited-1671816019792.jpeg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Khách bất ngờ bị rút tiền khỏi thẻ tín dụng, chuyên gia chỉ
                                mẹo phòng tránh</a
                            >
                        </h3>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_76"
                            data-content-piece="home-category_76-position_3"
                            data-content-target="/kinh-doanh/nam-khung-khiep-cua-tien-dien-tu-bitcoin-danh-bai-moi-du-doan-20221224084259560.htm"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Năm khủng khiếp của tiền điện tử: Bitcoin đánh bại mọi dự đoán"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2021/12/04/bitcoinreuters-crop-1638602763789.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2021/12/04/bitcoinreuters-crop-1638602763789.jpeg 1x, https://icdn.dantri.com.vn/zoom/180_120/2021/12/04/bitcoinreuters-crop-1638602763789.jpeg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Năm khủng khiếp của tiền điện tử: Bitcoin đánh bại mọi dự
                                đoán</a
                            >
                        </h3>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_76"
                            data-content-piece="home-category_76-position_4"
                            data-content-target="/kinh-doanh/gia-vang-giam-sau-dau-hieu-kha-quan-cua-kinh-te-my-20221224012650880.htm"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Giá vàng giảm sau dấu hiệu khả quan của kinh tế Mỹ"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/gia-vang-118-anh-tien-tuan-1671819932885.jpg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/gia-vang-118-anh-tien-tuan-1671819932885.jpg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/24/gia-vang-118-anh-tien-tuan-1671819932885.jpg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Giá vàng giảm sau dấu hiệu khả quan của kinh tế Mỹ</a
                            >
                        </h3>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_76"
                            data-content-piece="home-category_76-position_5"
                            data-content-target="/kinh-doanh/ha-gia-xe-rolls-royce-ma-vang-12-ty-dong-de-tim-khach-mua-20221223173551601.htm"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Hạ giá xe Rolls-Royce mạ vàng 1,2 tỷ đồng để tìm khách mua"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/09/20/rolls-royce-q-crop-1663645529674.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/09/20/rolls-royce-q-crop-1663645529674.jpeg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/09/20/rolls-royce-q-crop-1663645529674.jpeg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Hạ giá xe Rolls-Royce mạ vàng 1,2 tỷ đồng để tìm khách
                                mua</a
                            >
                        </h3>
                    </article>
                </div>
            </div>
            <div data-module="home-widget"></div>
            <div class="category-wrap line">
                <div class="category-head">
                    <h2 class="title">
                        <a href="bat-dong-san.jsp">Bất động sản</a>
                    </h2>
                    <ol class="category-nav">
                        <li><a href="#">Dự án</a></li>
                        <li><a href="#">Thị trường</a></li>
                        <li>
                            <a href="#"
                            >Nhịp sống đô thị</a
                            >
                        </li>
                        <li><a href="#">Sống xanh</a></li>
                    </ol>
                </div>
                <div class="category-container">
                    <article
                            class="article-item"
                            data-content-name="home-category_927"
                            data-content-piece="home-category_927-position_1"
                            data-content-target="/kinh-doanh/cao-toc-tuyen-quang-phu-tho-dieu-chinh-dau-tu-can-them-hon-4000-ty-dong-20221223180348340.htm"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Cao tốc Tuyên Quang - Phú Thọ: Điều chỉnh đầu tư cần thêm hơn 4.000 tỷ đồng"
                                        data-src="https://icdn.dantri.com.vn/zoom/192_128/2022/11/16/cao-toc-mai-son-quoc-lo-45-1668614187378.jpg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/192_128/2022/11/16/cao-toc-mai-son-quoc-lo-45-1668614187378.jpg 1x, https://icdn.dantri.com.vn/zoom/384_256/2022/11/16/cao-toc-mai-son-quoc-lo-45-1668614187378.jpg 2x"
                                        height="128"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 192 128'%2F%3E"
                                        width="192"
                                />
                            </a>
                        </div>
                        <div class="article-content">
                            <h3 class="article-title">
                                <a
                                        href="#"
                                >Cao tốc Tuyên Quang - Phú Thọ: Điều chỉnh đầu tư cần thêm
                                    hơn 4.000 tỷ đồng</a
                                >
                            </h3>
                            <div class="article-excerpt">
                                <a
                                        href="#"
                                >
                                    Sau khi được điều chỉnh đầu tư, cao tốc Tuyên Quang - Phú
                                    Thọ dài 40,2km, 4 làn xe cần nguồn vốn khoảng 7.800...
                                </a>
                            </div>
                        </div>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_927"
                            data-content-piece="home-category_927-position_2"
                            data-content-target="/bat-dong-san/dat-nen-giam-gia-hang-loat-chu-nha-dat-trong-pho-van-het-gia-cao-20221223140955840.htm"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Đất nền giảm giá hàng loạt, chủ nhà đất trong phố vẫn hét giá cao"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/23/3195517455215515866002617965556936442923133n-edited-1671779062331.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/23/3195517455215515866002617965556936442923133n-edited-1671779062331.jpeg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/23/3195517455215515866002617965556936442923133n-edited-1671779062331.jpeg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Đất nền giảm giá hàng loạt, chủ nhà đất trong phố vẫn hét
                                giá cao</a
                            >
                        </h3>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_927"
                            data-content-piece="home-category_927-position_3"
                            data-content-target="/bat-dong-san/bo-xay-dung-co-hien-tuong-cac-san-cau-ket-om-hang-lam-gia-tao-song-20221223143143630.htm"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Bộ Xây dựng: Có hiện tượng các sàn câu kết ôm hàng, làm giá, tạo sóng"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/23/bds-crop-1671780644620.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/23/bds-crop-1671780644620.jpeg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/23/bds-crop-1671780644620.jpeg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Bộ Xây dựng: Có hiện tượng các sàn câu kết ôm hàng, làm
                                giá, tạo sóng</a
                            >
                        </h3>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_927"
                            data-content-piece="home-category_927-position_4"
                            data-content-target="/bat-dong-san/gia-chung-cu-van-neo-cao-nguoi-mua-kho-voi-20221223135201919.htm"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Giá chung cư vẫn neo cao, người mua khó với"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/23/chung-cuha-phong-crop-1671778256325.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/23/chung-cuha-phong-crop-1671778256325.jpeg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/23/chung-cuha-phong-crop-1671778256325.jpeg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Giá chung cư vẫn neo cao, người mua khó với</a
                            >
                        </h3>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_927"
                            data-content-piece="home-category_927-position_5"
                            data-content-target="/bat-dong-san/qua-kho-khan-nhieu-doanh-nghiep-dia-oc-buoc-phai-giam-lao-dong-20221222104714053.htm"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Quá khó khăn, nhiều doanh nghiệp địa ốc buộc phải giảm lao động"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/13/dji0203-1665116466843-crop-1670924384930.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/13/dji0203-1665116466843-crop-1670924384930.jpeg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/13/dji0203-1665116466843-crop-1670924384930.jpeg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Quá khó khăn, nhiều doanh nghiệp địa ốc buộc phải giảm lao
                                động</a
                            >
                        </h3>
                    </article>
                </div>
            </div>
            <div class="category-wrap line">
                <div class="category-head">
                    <h2 class="title"><a href="the-thao.jsp">Thể thao</a></h2>
                    <ol class="category-nav">
                        <li><a href="#">AFF Cup 2022</a></li>
                        <li><a href="#">Võ thuật</a></li>
                        <li>
                            <a href="#">Bóng đá Châu Âu</a>
                        </li>
                    </ol>
                </div>
                <div class="category-container">
                    <article
                            class="article-item"
                            data-content-name="home-category_26"
                            data-content-piece="home-category_26-position_1"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Top 10 ngôi sao tăng giá mạnh nhất sau World Cup 2022"
                                        data-src="https://icdn.dantri.com.vn/zoom/192_128/2022/12/24/9bd8795b10e8bf5c8df20a42e37cb3a6-crop-crop-1671886549163.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/192_128/2022/12/24/9bd8795b10e8bf5c8df20a42e37cb3a6-crop-crop-1671886549163.jpeg 1x, https://icdn.dantri.com.vn/zoom/384_256/2022/12/24/9bd8795b10e8bf5c8df20a42e37cb3a6-crop-crop-1671886549163.jpeg 2x"
                                        height="128"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 192 128'%2F%3E"
                                        width="192"
                                />
                            </a>
                        </div>
                        <div class="article-content">
                            <h3 class="article-title">
                                <a
                                        href="#"
                                >Top 10 ngôi sao tăng giá mạnh nhất sau World Cup 2022</a
                                >
                            </h3>
                            <div class="article-excerpt">
                                <a
                                        href="#"
                                >
                                    Sau World Cup 2022, chuyên trang Transfermarkt đã cập nhật
                                    mức giá mới của các cầu thủ. Hãy cùng điểm qua 10 ngôi
                                    sao...
                                </a>
                            </div>
                        </div>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_26"
                            data-content-piece="home-category_26-position_2"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Đại thắng 5-0 trước Lào, Malaysia gửi lời thách thức tới Việt Nam"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/fasas1671892395-crop-1671892994088.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/fasas1671892395-crop-1671892994088.jpeg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/24/fasas1671892395-crop-1671892994088.jpeg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                                <div class="article-ico"><i class="video"></i></div>
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Đại thắng 5-0 trước Lào, Malaysia gửi lời thách thức tới
                                Việt Nam</a
                            >
                        </h3>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_26"
                            data-content-piece="home-category_26-position_3"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Khung thành sân Mỹ Đình được bắt vít chắc chắn trước trận gặp Malaysia"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/khung-thanhdocx-1671880175007.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/khung-thanhdocx-1671880175007.jpeg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/24/khung-thanhdocx-1671880175007.jpeg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Khung thành sân Mỹ Đình được bắt vít chắc chắn trước trận
                                gặp Malaysia</a
                            >
                        </h3>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_26"
                            data-content-piece="home-category_26-position_4"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Rượt đuổi tỉ số nghẹt thở, Singapore ngược dòng hạ Myanmar"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/ilhancelebs1-1671884741645.jpg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/ilhancelebs1-1671884741645.jpg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/24/ilhancelebs1-1671884741645.jpg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                                <div class="article-ico"><i class="video"></i></div>
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Rượt đuổi tỉ số nghẹt thở, Singapore ngược dòng hạ
                                Myanmar</a
                            >
                        </h3>
                    </article>
                    <article
                            class="article-item"
                            data-content-name="home-category_26"
                            data-content-piece="home-category_26-position_5"
                            data-track-content=""
                    >
                        <div class="article-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Động thái bất ngờ của HLV Ten Hag với nhà vô địch World Cup"
                                        data-src="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/lisandro-martinez-world-cup-352-1671857110686.jpg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/90_60/2022/12/24/lisandro-martinez-world-cup-352-1671857110686.jpg 1x, https://icdn.dantri.com.vn/zoom/180_120/2022/12/24/lisandro-martinez-world-cup-352-1671857110686.jpg 2x"
                                        height="60"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 90 60'%2F%3E"
                                        width="90"
                                />
                            </a>
                        </div>
                        <h3 class="article-title">
                            <a
                                    href="#"
                            >Động thái bất ngờ của HLV Ten Hag với nhà vô địch World
                                Cup</a
                            >
                        </h3>
                    </article>
                </div>
            </div>
            <div data-module="home-football-widget"></div>

            <div id="desktop-home-middle-right" class="mdbl"></div>

        </div>
    </div>

    </div>
    <div id="desktop-home-middle-center-2" class="mdbl"></div>
    <div class="spotlight-wrap line bg-wrap mt-40">
        <div class="spotlight-nav">
            <div class="title">Spotlight</div>

        </div>
        <div class="spotlight-slide">
            <div class="spotlight-swiper swiper">
                <div class="swiper-wrapper">
                    <article
                            class="swiper-slide spotlight-item"
                            data-content-name="home-spotlights"
                            data-content-piece="home-spotlights-position_1"
                            data-track-content=""
                    >
                        <div class="spotlight-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Không khí người dân đón Giáng sinh vui tươi, ấm áp trên khắp cả nước"
                                        data-src="https://icdn.dantri.com.vn/zoom/270_405/2022/12/24/dem-giang-sinh-27-edited-crop-1671895150310.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/270_405/2022/12/24/dem-giang-sinh-27-edited-crop-1671895150310.jpeg 1x, https://icdn.dantri.com.vn/zoom/540_810/2022/12/24/dem-giang-sinh-27-edited-crop-1671895150310.jpeg 2x"
                                        height="405"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 270 405'%2F%3E"
                                        width="270"
                                />
                            </a>
                        </div>
                        <div class="spotlight-category photostory">
                            <a href="photo-story.html">
                                <i class="logo-article logo-photostory"></i>
                            </a>
                        </div>
                        <h3 class="spotlight-title">
                            <a
                                    href="#"
                            >Không khí người dân đón Giáng sinh vui tươi, ấm áp trên
                                khắp cả nước</a
                            >
                        </h3>
                    </article>
                    <article
                            class="swiper-slide spotlight-item"
                            data-content-name="home-spotlights"
                            data-content-piece="home-spotlights-position_2"
                            data-track-content=""
                    >
                        <div class="spotlight-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Xứ sở nhiều nhà thờ nhất Việt Nam trang hoàng lộng lẫy đón Giáng sinh"
                                        data-src="https://icdn.dantri.com.vn/zoom/270_405/2022/12/24/z39852992127858cbebaf232092a6de034a27dbe17758a-crop-1671877764467.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/270_405/2022/12/24/z39852992127858cbebaf232092a6de034a27dbe17758a-crop-1671877764467.jpeg 1x, https://icdn.dantri.com.vn/zoom/540_810/2022/12/24/z39852992127858cbebaf232092a6de034a27dbe17758a-crop-1671877764467.jpeg 2x"
                                        height="405"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 270 405'%2F%3E"
                                        width="270"
                                />
                            </a>
                        </div>
                        <div class="spotlight-category photostory">
                            <a href="photo-story.html">
                                <i class="logo-article logo-photostory"></i>
                            </a>
                        </div>
                        <h3 class="spotlight-title">
                            <a
                                    href="#"
                            >Xứ sở nhiều nhà thờ nhất Việt Nam trang hoàng lộng lẫy đón
                                Giáng sinh</a
                            >
                        </h3>
                    </article>

                    <article
                            class="swiper-slide spotlight-item"
                            data-content-name="home-spotlights"
                            data-content-piece="home-spotlights-position_4"
                            data-track-content=""
                    >
                        <div class="spotlight-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Người chép sử của trận chiến &#34;Hà Nội - Điện Biên Phủ trên không&#34;"
                                        data-src="https://icdn.dantri.com.vn/zoom/270_405/2022/12/22/thumb2x3-1-1671725102346.jpg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/270_405/2022/12/22/thumb2x3-1-1671725102346.jpg 1x, https://icdn.dantri.com.vn/zoom/540_810/2022/12/22/thumb2x3-1-1671725102346.jpg 2x"
                                        height="405"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 270 405'%2F%3E"
                                        width="270"
                                />
                            </a>
                        </div>

                        <h3 class="spotlight-title">
                            <a
                                    href="#"
                            >Người chép sử của trận chiến &quot;Hà Nội - Điện Biên Phủ
                                trên không&quot;</a
                            >
                        </h3>
                    </article>
                    <article
                            class="swiper-slide spotlight-item"
                            data-content-name="home-spotlights"
                            data-content-piece="home-spotlights-position_5"
                            data-track-content=""
                    >
                        <div class="spotlight-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Nhìn lại 2022: &#34;Dị biệt&#34; thị trường xăng dầu"
                                        data-src="https://icdn.dantri.com.vn/zoom/270_405/2022/12/23/xang-daumanh-quan-crop-1671759729794.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/270_405/2022/12/23/xang-daumanh-quan-crop-1671759729794.jpeg 1x, https://icdn.dantri.com.vn/zoom/540_810/2022/12/23/xang-daumanh-quan-crop-1671759729794.jpeg 2x"
                                        height="405"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 270 405'%2F%3E"
                                        width="270"
                                />
                            </a>
                        </div>
                        <div class="spotlight-category blog">
                            <a href="#">
                                <i class="logo-article logo-blog"></i>
                            </a>
                        </div>
                        <h3 class="spotlight-title">
                            <a
                                    href="#"
                            >Nhìn lại 2022: &quot;Dị biệt&quot; thị trường xăng dầu</a
                            >
                        </h3>
                    </article>
                    <article
                            class="swiper-slide spotlight-item"
                            data-content-name="home-spotlights"
                            data-content-piece="home-spotlights-position_6"
                            data-track-content=""
                    >
                        <div class="spotlight-thumb">
                            <a
                                    href="#"
                            >
                                <img
                                        alt="Nhìn lại 2022: &#34;Nóng - lạnh&#34; thị trường bất động sản"
                                        data-src="https://icdn.dantri.com.vn/zoom/270_405/2022/12/21/sudico-ankhanh-dantri-7-edited-1671078156281-crop-1671618669566.jpeg"
                                        data-srcset="https://icdn.dantri.com.vn/zoom/270_405/2022/12/21/sudico-ankhanh-dantri-7-edited-1671078156281-crop-1671618669566.jpeg 1x, https://icdn.dantri.com.vn/zoom/540_810/2022/12/21/sudico-ankhanh-dantri-7-edited-1671078156281-crop-1671618669566.jpeg 2x"
                                        height="405"
                                        src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 270 405'%2F%3E"
                                        width="270"
                                />
                            </a>
                        </div>
                        <div class="spotlight-category blog">
                            <a href="#">
                                <i class="logo-article logo-blog"></i>
                            </a>
                        </div>
                        <h3 class="spotlight-title">
                            <a
                                    href="#"
                            >Nhìn lại 2022: &quot;Nóng - lạnh&quot; thị trường bất động
                                sản</a
                            >
                        </h3>
                    </article>
                </div>
                <div class="spotlight-pagination"></div>
            </div>
            <div class="spotlight-next">
                <svg
                        width="12"
                        height="12"
                        viewBox="0 0 12 12"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                >
                    <g clip-path="url(#clip0_1171_3832)">
                        <path
                                d="M9.707 5.29292L4.707 0.292919C4.51839 0.110761 4.26579 0.00996641 4.0036 0.0122448C3.7414 0.0145233 3.49059 0.119692 3.30518 0.3051C3.11977 0.490508 3.0146 0.741321 3.01232 1.00352C3.01004 1.26571 3.11084 1.51832 3.293 1.70692L7.586 5.99992L3.293 10.2929C3.19749 10.3852 3.1213 10.4955 3.0689 10.6175C3.01649 10.7395 2.9889 10.8707 2.98775 11.0035C2.98659 11.1363 3.01189 11.268 3.06218 11.3909C3.11246 11.5138 3.18671 11.6254 3.2806 11.7193C3.37449 11.8132 3.48615 11.8875 3.60904 11.9377C3.73194 11.988 3.86362 12.0133 3.9964 12.0122C4.12918 12.011 4.2604 11.9834 4.3824 11.931C4.50441 11.8786 4.61475 11.8024 4.707 11.7069L9.707 6.70692C9.89447 6.51939 9.99978 6.26508 9.99978 5.99992C9.99978 5.73475 9.89447 5.48045 9.707 5.29292Z"
                                fill="white"
                        />
                    </g>
                    <defs>
                        <clipPath id="clip0_1171_3832">
                            <rect width="12" height="12" fill="white" />
                        </clipPath>
                    </defs>
                </svg>
            </div>
            <div class="spotlight-prev">
                <svg
                        width="12"
                        height="12"
                        viewBox="0 0 12 12"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                >
                    <g clip-path="url(#clip0_1171_3837)">
                        <path
                                d="M2.29298 5.29292L7.29298 0.292919C7.48158 0.110761 7.73418 0.00996641 7.99638 0.0122448C8.25858 0.0145233 8.50939 0.119692 8.6948 0.3051C8.88021 0.490508 8.98538 0.741321 8.98765 1.00352C8.98993 1.26571 8.88914 1.51832 8.70698 1.70692L4.41398 5.99992L8.70698 10.2929C8.80249 10.3852 8.87867 10.4955 8.93108 10.6175C8.98349 10.7395 9.01108 10.8707 9.01223 11.0035C9.01338 11.1363 8.98808 11.268 8.9378 11.3909C8.88752 11.5138 8.81327 11.6254 8.71937 11.7193C8.62548 11.8132 8.51383 11.8875 8.39093 11.9377C8.26804 11.988 8.13636 12.0133 8.00358 12.0122C7.8708 12.011 7.73958 11.9834 7.61758 11.931C7.49557 11.8786 7.38523 11.8024 7.29298 11.7069L2.29298 6.70692C2.10551 6.51939 2.00019 6.26508 2.00019 5.99992C2.00019 5.73475 2.10551 5.48045 2.29298 5.29292Z"
                                fill="white"
                        />
                    </g>
                    <defs>
                        <clipPath id="clip0_1171_3837">
                            <rect
                                    width="12"
                                    height="12"
                                    fill="white"
                                    transform="matrix(-1 0 0 1 12 0)"
                            />
                        </clipPath>
                    </defs>
                </svg>
            </div>
        </div>
    </div>
    <div class="grid row">

    </div>
    <div id="desktop-home-center-3" class="mdbl"></div>
    <div class="grid row mt-60">
        <div class="article-col" data-cate-id="135">
            <h2 class="title">
                <a href="#"> Nhịp sống trẻ </a>
            </h2>
            <ol class="navigation">
                <li>
                    <a href="#">Cộng đồng mạng</a>
                </li>
                <li><a href="#">Tài năng trẻ</a></li>
            </ol>
            <article class="article-wrap">
                <article
                        class="article-item"
                        data-content-name="home-category_135"
                        data-content-piece="home-category_135-position_1"
                        data-track-content=""
                >
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="Tuyển thủ bóng đá điển trai của Hàn Quốc khoe thân hình &#34;sáu múi&#34;"
                                    data-src="https://icdn.dantri.com.vn/zoom/264_176/2022/12/23/cho4vogue-crop-1671804531416.jpeg"
                                    data-srcset="https://icdn.dantri.com.vn/zoom/264_176/2022/12/23/cho4vogue-crop-1671804531416.jpeg 1x, https://icdn.dantri.com.vn/zoom/528_352/2022/12/23/cho4vogue-crop-1671804531416.jpeg 2x"
                                    height="176"
                                    src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 264 176'%2F%3E"
                                    width="264"
                            />
                        </a>
                    </div>
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Tuyển thủ bóng đá điển trai của Hàn Quốc khoe thân hình
                            &quot;sáu múi&quot;</a
                        >
                    </h3>
                </article>
                <article
                        class="article-item"
                        data-content-name="home-category_135"
                        data-content-piece="home-category_135-position_2"
                        data-track-content=""
                >
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="Những nguyên tắc vàng nếu muốn có một tình bạn bền vững"
                                    data-src="https://icdn.dantri.com.vn/zoom/114_76/2022/12/23/nhung-nguyen-tac-vang-can-nghe-theo-neu-ban-muon-co-mot-tinh-ban-ben-vung-crop-crop-crop-1671798159299.jpeg"
                                    data-srcset="https://icdn.dantri.com.vn/zoom/114_76/2022/12/23/nhung-nguyen-tac-vang-can-nghe-theo-neu-ban-muon-co-mot-tinh-ban-ben-vung-crop-crop-crop-1671798159299.jpeg 1x, https://icdn.dantri.com.vn/zoom/228_152/2022/12/23/nhung-nguyen-tac-vang-can-nghe-theo-neu-ban-muon-co-mot-tinh-ban-ben-vung-crop-crop-crop-1671798159299.jpeg 2x"
                                    height="76"
                                    src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 114 76'%2F%3E"
                                    width="114"
                            />
                        </a>
                    </div>
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Những nguyên tắc vàng nếu muốn có một tình bạn bền vững</a
                        >
                    </h3>
                </article>
                <article
                        class="article-item"
                        data-content-name="home-category_135"
                        data-content-piece="home-category_135-position_3"
                        data-track-content=""
                >
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="Những từ lóng được giới trẻ sử dụng phổ biến trong năm 2022"
                                    data-src="https://icdn.dantri.com.vn/zoom/114_76/2022/12/21/tu-long-thumb32-1671635449486.jpg"
                                    data-srcset="https://icdn.dantri.com.vn/zoom/114_76/2022/12/21/tu-long-thumb32-1671635449486.jpg 1x, https://icdn.dantri.com.vn/zoom/228_152/2022/12/21/tu-long-thumb32-1671635449486.jpg 2x"
                                    height="76"
                                    src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 114 76'%2F%3E"
                                    width="114"
                            />
                        </a>
                    </div>
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Những từ lóng được giới trẻ sử dụng phổ biến trong năm
                            2022</a
                        >
                    </h3>
                </article>
                <article
                        class="article-item"
                        data-content-name="home-category_135"
                        data-content-piece="home-category_135-position_4"
                        data-track-content=""
                >
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="56 đồ án tốt nghiệp nhận giải thưởng Loa Thành lần thứ 34"
                                    data-src="https://icdn.dantri.com.vn/zoom/114_76/2022/12/23/z398169101725744173035aa1e7482f69d227049532cda-crop-1671781975151.jpeg"
                                    data-srcset="https://icdn.dantri.com.vn/zoom/114_76/2022/12/23/z398169101725744173035aa1e7482f69d227049532cda-crop-1671781975151.jpeg 1x, https://icdn.dantri.com.vn/zoom/228_152/2022/12/23/z398169101725744173035aa1e7482f69d227049532cda-crop-1671781975151.jpeg 2x"
                                    height="76"
                                    src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 114 76'%2F%3E"
                                    width="114"
                            />
                        </a>
                    </div>
                    <h3 class="article-title">
                        <a
                                href="#"
                        >56 đồ án tốt nghiệp nhận giải thưởng Loa Thành lần thứ 34</a
                        >
                    </h3>
                </article>
            </article>
        </div>
        <div class="article-col" data-cate-id="894">
            <h2 class="title">
                <a href="#"> Khoa học - Công nghệ </a>
            </h2>
            <ol class="navigation">
                <li>
                    <a href="#"
                    >Thế giới tự nhiên</a
                    >
                </li>
                <li><a href="#">Vũ trụ</a></li>
                <li><a href="#">Khám phá</a></li>
            </ol>
            <article class="article-wrap">
                <article
                        class="article-item"
                        data-content-name="home-category_894"
                        data-content-piece="home-category_894-position_1"
                        data-track-content=""
                >
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="Hành trình nghiên cứu nhiều thách thức của chủ nhân giải thưởng VinFuture 2022"
                                    data-src="https://icdn.dantri.com.vn/zoom/264_176/2022/12/24/technode-chu-nhan-vfp-2022docx-1671848998148.jpeg"
                                    data-srcset="https://icdn.dantri.com.vn/zoom/264_176/2022/12/24/technode-chu-nhan-vfp-2022docx-1671848998148.jpeg 1x, https://icdn.dantri.com.vn/zoom/528_352/2022/12/24/technode-chu-nhan-vfp-2022docx-1671848998148.jpeg 2x"
                                    height="176"
                                    src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 264 176'%2F%3E"
                                    width="264"
                            />
                        </a>
                    </div>
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Hành trình nghiên cứu nhiều thách thức của chủ nhân giải
                            thưởng VinFuture 2022</a
                        >
                    </h3>
                </article>
                <article
                        class="article-item"
                        data-content-name="home-category_894"
                        data-content-piece="home-category_894-position_2"
                        data-track-content=""
                >
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="Khoảnh khắc cây ăn thịt nuốt chửng chuột, đáng sợ với vũ khí săn mồi"
                                    data-src="https://icdn.dantri.com.vn/zoom/114_76/2022/12/23/khoanh-khac-cay-an-thit-nuot-chung-chuot-dang-so-voi-vu-khi-san-moidocx-1671788378789.png"
                                    data-srcset="https://icdn.dantri.com.vn/zoom/114_76/2022/12/23/khoanh-khac-cay-an-thit-nuot-chung-chuot-dang-so-voi-vu-khi-san-moidocx-1671788378789.png 1x, https://icdn.dantri.com.vn/zoom/228_152/2022/12/23/khoanh-khac-cay-an-thit-nuot-chung-chuot-dang-so-voi-vu-khi-san-moidocx-1671788378789.png 2x"
                                    height="76"
                                    src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 114 76'%2F%3E"
                                    width="114"
                            />
                            <div class="article-ico"><i class="video"></i></div>
                        </a>
                    </div>
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Khoảnh khắc cây ăn thịt nuốt chửng chuột, đáng sợ với vũ khí
                            săn mồi</a
                        >
                    </h3>
                </article>
                <article
                        class="article-item"
                        data-content-name="home-category_894"
                        data-content-piece="home-category_894-position_3"
                        data-track-content=""
                >
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="Báo đen bỏ con mồi chạy tháo thân khi &#34;kẻ phá bĩnh&#34; bất ngờ xuất hiện"
                                    data-src="https://icdn.dantri.com.vn/zoom/114_76/2022/12/23/bao-den-1671787599837.gif"
                                    data-srcset="https://icdn.dantri.com.vn/zoom/114_76/2022/12/23/bao-den-1671787599837.gif 1x, https://icdn.dantri.com.vn/zoom/228_152/2022/12/23/bao-den-1671787599837.gif 2x"
                                    height="76"
                                    src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 114 76'%2F%3E"
                                    width="114"
                            />
                            <div class="article-ico"><i class="video"></i></div>
                        </a>
                    </div>
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Báo đen bỏ con mồi chạy tháo thân khi &quot;kẻ phá bĩnh&quot;
                            bất ngờ xuất hiện</a
                        >
                    </h3>
                </article>
                <article
                        class="article-item"
                        data-content-name="home-category_894"
                        data-content-piece="home-category_894-position_4"
                        data-track-content=""
                >
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="5 sự kiện vật lý và vũ trụ hàng đầu năm 2022"
                                    data-src="https://icdn.dantri.com.vn/zoom/114_76/2022/12/23/5-crop-1671760927181.jpeg"
                                    data-srcset="https://icdn.dantri.com.vn/zoom/114_76/2022/12/23/5-crop-1671760927181.jpeg 1x, https://icdn.dantri.com.vn/zoom/228_152/2022/12/23/5-crop-1671760927181.jpeg 2x"
                                    height="76"
                                    src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 114 76'%2F%3E"
                                    width="114"
                            />
                        </a>
                    </div>
                    <h3 class="article-title">
                        <a
                                href="#"
                        >5 sự kiện vật lý và vũ trụ hàng đầu năm 2022</a
                        >
                    </h3>
                </article>
            </article>
        </div>
        <div class="article-col" data-cate-id="702">
            <h2 class="title mb-24"><a href="#"> Tâm điểm </a></h2>
            <article class="article-wrap">
                <article>
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="Nhìn lại 2022: &#34;Dị biệt&#34; thị trường xăng dầu"
                                    data-src="https://icdn.dantri.com.vn/zoom/264_176/2022/12/23/xang-daumanh-quan-1671759499807.jpg"
                                    data-srcset="https://icdn.dantri.com.vn/zoom/264_176/2022/12/23/xang-daumanh-quan-1671759499807.jpg 1x, https://icdn.dantri.com.vn/zoom/528_352/2022/12/23/xang-daumanh-quan-1671759499807.jpg 2x"
                                    height="176"
                                    src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 264 176'%2F%3E"
                                    width="264"
                            />
                        </a>
                    </div>
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Nhìn lại 2022: &quot;Dị biệt&quot; thị trường xăng dầu</a
                        >
                    </h3>
                </article>
                <article>
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="Nhìn lại 2022: &#34;Nóng - lạnh&#34; thị trường bất động sản"
                                    data-src="https://icdn.dantri.com.vn/zoom/114_76/2022/12/21/sudico-ankhanh-dantri-7-edited-1671078156281-1671618584464.jpeg"
                                    data-srcset="https://icdn.dantri.com.vn/zoom/114_76/2022/12/21/sudico-ankhanh-dantri-7-edited-1671078156281-1671618584464.jpeg 1x, https://icdn.dantri.com.vn/zoom/228_152/2022/12/21/sudico-ankhanh-dantri-7-edited-1671078156281-1671618584464.jpeg 2x"
                                    height="76"
                                    src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 114 76'%2F%3E"
                                    width="114"
                            />
                        </a>
                    </div>
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Nhìn lại 2022: &quot;Nóng - lạnh&quot; thị trường bất động
                            sản</a
                        >
                    </h3>
                </article>
                <article
                        class="article-item"
                        data-content-name="home-category_702"
                        data-content-piece="home-category_702-position_3"
                        data-track-content=""
                >
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="Bảo vệ Tổ quốc từ sớm, từ xa"
                                    data-src="https://icdn.dantri.com.vn/zoom/114_76/2022/12/22/dsc7929-edited-1667460037614-1671672344656.jpeg"
                                    data-srcset="https://icdn.dantri.com.vn/zoom/114_76/2022/12/22/dsc7929-edited-1667460037614-1671672344656.jpeg 1x, https://icdn.dantri.com.vn/zoom/228_152/2022/12/22/dsc7929-edited-1667460037614-1671672344656.jpeg 2x"
                                    height="76"
                                    src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 114 76'%2F%3E"
                                    width="114"
                            />
                        </a>
                    </div>
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Bảo vệ Tổ quốc từ sớm, từ xa</a
                        >
                    </h3>
                </article>
                <article
                        class="article-item"
                        data-content-name="home-category_702"
                        data-content-piece="home-category_702-position_4"

                        data-track-content=""
                >
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="Nhìn lại 2022: Nhiều đại án đặc biệt nghiêm trọng &#34;lộ sáng&#34;"
                                    data-src="https://icdn.dantri.com.vn/zoom/114_76/2022/12/21/photo-0-1534382118874407007745-crop-crop-1671594523268.jpeg"
                                    data-srcset="https://icdn.dantri.com.vn/zoom/114_76/2022/12/21/photo-0-1534382118874407007745-crop-crop-1671594523268.jpeg 1x, https://icdn.dantri.com.vn/zoom/228_152/2022/12/21/photo-0-1534382118874407007745-crop-crop-1671594523268.jpeg 2x"
                                    height="76"
                                    src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 114 76'%2F%3E"
                                    width="114"
                            />
                        </a>
                    </div>
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Nhìn lại 2022: Nhiều đại án đặc biệt nghiêm trọng &quot;lộ
                            sáng&quot;</a
                        >
                    </h3>
                </article>
            </article>
        </div>
        <div class="article-col" data-cate-id="202">
            <h2 class="title"><a href="#"> Bạn đọc </a></h2>
            <ol class="navigation">
                <li><a href="#">Bạn đọc nói</a></li>

                <li><a href="#">Hồi âm</a></li>
            </ol>
            <article class="article-wrap">
                <article
                        class="article-item"
                        data-content-name="home-category_202"
                        data-content-piece="home-category_202-position_1"
                        data-track-content=""
                >
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="Pháo hoa, pháo nổ là gì? Đối tượng nào được phép sử dụng?"
                                    data-src="https://icdn.dantri.com.vn/zoom/264_176/2022/12/24/z-22707521149206-f-5672896-fc-412227-dd-759956-f-09-a-59-d-1610182812200-crop-1671844937887.jpeg"
                                    data-srcset="https://icdn.dantri.com.vn/zoom/264_176/2022/12/24/z-22707521149206-f-5672896-fc-412227-dd-759956-f-09-a-59-d-1610182812200-crop-1671844937887.jpeg 1x, https://icdn.dantri.com.vn/zoom/528_352/2022/12/24/z-22707521149206-f-5672896-fc-412227-dd-759956-f-09-a-59-d-1610182812200-crop-1671844937887.jpeg 2x"
                                    height="176"
                                    src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 264 176'%2F%3E"
                                    width="264"
                            />
                        </a>
                    </div>
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Pháo hoa, pháo nổ là gì? Đối tượng nào được phép sử dụng?</a
                        >
                    </h3>
                </article>
                <article
                        class="article-item"
                        data-content-name="home-category_202"
                        data-content-piece="home-category_202-position_2"
                        data-track-content=""
                >
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="Từ vụ AIC: Các trường hợp bị cáo có thể vắng mặt tại phiên tòa xét xử"
                                    data-src="https://icdn.dantri.com.vn/zoom/114_76/2022/12/23/aic-crop-1671782388394.jpeg"
                                    data-srcset="https://icdn.dantri.com.vn/zoom/114_76/2022/12/23/aic-crop-1671782388394.jpeg 1x, https://icdn.dantri.com.vn/zoom/228_152/2022/12/23/aic-crop-1671782388394.jpeg 2x"
                                    height="76"
                                    src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 114 76'%2F%3E"
                                    width="114"
                            />
                        </a>
                    </div>
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Từ vụ AIC: Các trường hợp bị cáo có thể vắng mặt tại phiên
                            tòa xét xử</a
                        >
                    </h3>
                </article>
                <article
                        class="article-item"
                        data-content-name="home-category_202"
                        data-content-piece="home-category_202-position_3"
                        data-track-content=""
                >
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="Vì sao vụ cháy thiệt hại lớn nhất Bạc Liêu 3 năm trước vẫn chưa ngã ngũ?"
                                    data-src="https://icdn.dantri.com.vn/zoom/114_76/2022/12/22/cpl-4-1671719627697.jpg"
                                    data-srcset="https://icdn.dantri.com.vn/zoom/114_76/2022/12/22/cpl-4-1671719627697.jpg 1x, https://icdn.dantri.com.vn/zoom/228_152/2022/12/22/cpl-4-1671719627697.jpg 2x"
                                    height="76"
                                    src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 114 76'%2F%3E"
                                    width="114"
                            />
                        </a>
                    </div>
                    <h3 class="article-title">
                        <a
                                href="#"
                        >Vì sao vụ cháy thiệt hại lớn nhất Bạc Liêu 3 năm trước vẫn
                            chưa ngã ngũ?</a
                        >
                    </h3>
                </article>
                <article
                        class="article-item"
                        data-content-name="home-category_202"
                        data-content-piece="home-category_202-position_4"
                        data-track-content=""
                >
                    <div class="article-thumb">
                        <a
                                href="#"
                        >
                            <img
                                    alt="&#34;Messi và những giá trị&#34; qua cảm nhận của một cô giáo yêu bóng đá!"
                                    data-src="https://icdn.dantri.com.vn/zoom/114_76/2022/12/22/messi-83-1671431075671-1671691588920.jpg"
                                    data-srcset="https://icdn.dantri.com.vn/zoom/114_76/2022/12/22/messi-83-1671431075671-1671691588920.jpg 1x, https://icdn.dantri.com.vn/zoom/228_152/2022/12/22/messi-83-1671431075671-1671691588920.jpg 2x"
                                    height="76"
                                    src="data:image/svg+xml;charset=utf-8,%3Csvg xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg' viewBox%3D'0 0 114 76'%2F%3E"
                                    width="114"
                            />
                        </a>
                    </div>
                    <h3 class="article-title">
                        <a
                                href="#"
                        >&quot;Messi và những giá trị&quot; qua cảm nhận của một cô
                            giáo yêu bóng đá!</a
                        >
                    </h3>
                </article>
            </article>
        </div>
    </div>

</main>

<!-- show hình ảnh -->
<script
        src="../cdnweb/common.js"
></script>
</body>
</html>
