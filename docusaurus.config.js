// @ts-check
// Note: type annotations allow type checking and IDEs autocompletion

const lightCodeTheme = require('prism-react-renderer/themes/github');
const darkCodeTheme = require('prism-react-renderer/themes/dracula');

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: 'Patitotective',
  tagline: 'Patitotective\'s Website',
  url: 'https://patitotective.github.io',
  baseUrl: '/Patitotective/',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: '/img/logo.svg',
  organizationName: 'Patitotective', // Usually your GitHub org/user name.
  projectName: 'Patitotective', // Usually your repo name.

  presets: [
    [
      '@docusaurus/preset-classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
          // Please change this to your repo.
          editUrl: 'https://github.com/Patitotective/Patitotective/edit/main/website/',
        },
        blog: {
          showReadingTime: true,
          // Please change this to your repo.
          editUrl:
            'https://github.com/Patitotective/Patitotective/edit/main/website/blog/',
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      image: 'img/logo.png',
      colorMode: {
        defaultMode: "dark", 
      },       
      navbar: {
        title: 'Patitotective',
        logo: {
          alt: 'Patitotective',
          src: '/img/logo.svg',
        },
        items: [
          {to: '/blog', label: 'Blog', position: 'left'}, 
          {to: '/branding', label: 'Branding', position: 'left'},          
          {to: '/about', label: 'About', position: 'left'},
          {
            href: 'https://discord.com/invite/as85Q4GnR6',
            position: 'right',
            className: 'header-discord-link',
            'aria-label': 'Discord sever'
          },
          {
            href: 'https://github.com/Patitotective',
            position: 'right',
            className: 'header-github-link',
            'aria-label': 'GitHub repository',
          }, 
          {
            href: 'https://twitter.com/patitotective',
            position: 'right',
            className: 'header-twitter-link',
            'aria-label': 'Twitter profile',
          },
        ],
      },
      footer: {
        style: 'dark',
        links: [
          // {
          //   title: 'Docs',
          //   items: [
          //     {
          //       label: 'Tutorial',
          //       to: '/docs/intro',
          //     },
          //   ],
          // },
          {
            title: 'Social',
            items: [
              {
                label: 'Discord',
                href: 'https://discord.com/invite/as85Q4GnR6',
              },
              {
                label: 'Twitter',
                href: 'https://twitter.com/patitotective',
              },
            ],
          },
          {
            title: 'More',
            items: [
              {
                label: 'Blog',
                to: '/blog',
              },
              {
                label: 'GitHub',
                href: 'https://github.com/Patitotective',
              },
              {
                label: 'Source code', 
                href: 'https://github.com/Patitotective/Patitotective'
              }
            ],
          },
        ],
        copyright: `Copyright © ${new Date().getFullYear()} Patitotective, Inc. Built with Docusaurus.`,
      },
      prism: {
        theme: lightCodeTheme,
        darkTheme: darkCodeTheme,
      },
    }),
};

module.exports = config;
