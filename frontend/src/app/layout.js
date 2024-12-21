import { Inter } from "next/font/google";
import "./globals.css";
import { Providers } from "./providers";
import '@rainbow-me/rainbowkit/styles.css';

const inter = Inter({ subsets: ["latin"] });

export const metadata = {
  title: "CryptoDevsDAO",
  description: "CryptoDevsDAO for holder of CryptoDevs NFTs",
};

export default function RootLayout({
  children,
}) {
  return (
    <html lang="en">
      <body>
        <Providers >{children}</Providers></body>
    </html>
  );
}
