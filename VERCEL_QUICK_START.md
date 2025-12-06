# ⚡ Vercel Quick Start (5 Minutes)

## 🚀 Fast Deployment

### 1. Push to GitHub
- Make sure your code is on GitHub: `https://github.com/itxhamzaasim/EmpowerYou`

### 2. Deploy on Vercel
1. Go to [vercel.com](https://vercel.com) → Sign in
2. Click **"Add New Project"**
3. Import your **EmpowerYou** repository
4. Click **"Deploy"** (no build settings needed)

### 3. Set Environment Variables
Vercel Dashboard → Your Project → **Settings** → **Environment Variables**

Add:
- `ADMIN_PASS` = `your-password`
- `SUPABASE_URL` = `https://xxxxx.supabase.co`
- `SUPABASE_ANON_KEY` = `eyJhbGciOi...`

### 4. Redeploy
- Go to **Deployments** → Click **"Redeploy"**

### 5. Done! ✅
- Your site: `https://your-project.vercel.app`
- Admin: `https://your-project.vercel.app/admin.html`

## 🗄️ Supabase Setup

1. Go to [supabase.com](https://supabase.com) → Create account
2. Create project → Run SQL (see [SUPABASE_SETUP.md](./SUPABASE_SETUP.md))
3. Get credentials → Add to Vercel

---

**Full guide:** See [VERCEL_SETUP.md](./VERCEL_SETUP.md)

