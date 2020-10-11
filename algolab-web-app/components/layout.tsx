import React, { ReactNode } from "react";
import Link from "next/link";
import Head from "next/head";
import Nav from "./nav";

interface LinkNode {
  href: string;
  label: string;
}

interface Props {
  title: string;
  links: LinkNode[];
  children: ReactNode;
}

function Layout({ title, links, children }: Props) {
  return (
    <div className="bg-gray-500 h-screen">
      <Head>
        <title>{title}</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <header>
        <Nav />
      </header>

      {children}

      <footer>
        <hr />
        <span>I'm here to stay (Footer)</span>
      </footer>
    </div>
  );
}

export default Layout;
