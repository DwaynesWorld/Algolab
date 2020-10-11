import Layout from "../components/layout";

const links = [
  { href: "https://github.com/vercel/next.js", label: "GitHub" },
  { href: "https://nextjs.org/docs", label: "Docs" },
];

function Home() {
  return (
    <Layout title="AlgoLab" links={links}>
      <div className="py-20">
        <h1 className="text-4xl text-center text-accent-1">Next.js + Tailwind CSS</h1>
      </div>
    </Layout>
  );
}

export default Home;
