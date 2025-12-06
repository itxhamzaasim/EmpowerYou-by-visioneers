# 🚀 Vercel Deployment Guide for EmpowerYou

This guide will help you deploy your EmpowerYou website to Vercel with Supabase cloud database.

## ✅ Prerequisites

- GitHub account
- Vercel account (free tier works perfectly)
- Supabase account (for permanent database)

## 📋 Step 1: Push to GitHub

Make sure your code is pushed to GitHub:
- Repository: `https://github.com/itxhamzaasim/EmpowerYou`

## 📋 Step 2: Deploy to Vercel

### Option A: Via Vercel Dashboard

1. Go to [vercel.com](https://vercel.com) and sign in
2. Click **"Add New Project"**
3. Import your GitHub repository `EmpowerYou`
4. Vercel will auto-detect:
   - **Framework Preset:** Other
   - **Root Directory:** `./`
   - **Build Command:** (leave empty)
   - **Output Directory:** (leave empty)
5. Click **"Deploy"**

### Option B: Via Vercel CLI

```bash
npm i -g vercel
vercel
```

## 📋 Step 3: Set Environment Variables

In Vercel Dashboard → Your Project → **Settings** → **Environment Variables**, add:

### Required:
- **`ADMIN_PASS`** = `your-secure-password` (for admin panel)

### For Supabase (Required for permanent storage):
- **`SUPABASE_URL`** = `https://xxxxx.supabase.co` (from Supabase dashboard)
- **`SUPABASE_ANON_KEY`** = `eyJhbGciOi...` (from Supabase dashboard)

**Important:** 
- Check all scopes: Production, Preview, Development
- Click **"Save"** for each variable

## 📋 Step 4: Configure Node Version

Vercel will automatically use Node 24 as specified in `package.json`.

## 📋 Step 5: Redeploy

After adding environment variables:
1. Go to **Deployments** tab
2. Click **"Redeploy"** on the latest deployment
3. Or trigger a new deployment

## ✅ Verification

After deployment:
- **Website:** `https://your-project.vercel.app`
- **Admin Panel:** `https://your-project.vercel.app/admin.html`
- **API Health:** `https://your-project.vercel.app/api/health`

## 🗄️ Database Setup

### Set Up Supabase (Required)

1. Go to [supabase.com](https://supabase.com) and create account
2. Create new project
3. Run this SQL in SQL Editor:

```sql
CREATE TABLE IF NOT EXISTS submissions (
  id BIGSERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  course TEXT NOT NULL,
  message TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

ALTER TABLE submissions ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow all operations for serverless functions"
ON submissions FOR ALL USING (true) WITH CHECK (true);
```

4. Get credentials from **Settings** → **API**
5. Add to Vercel environment variables

See [SUPABASE_SETUP.md](./SUPABASE_SETUP.md) for detailed Supabase setup.

## 📊 API Endpoints

Your API endpoints are available at:

- `POST /api/contact` - Submit enrollment form
- `GET /api/admin/submissions?admin_pass=PASSWORD` - View all submissions
- `DELETE /api/admin/submissions?admin_pass=PASSWORD&id=ID` - Delete submission
- `GET /api/health` - Health check

## 🔧 Project Structure

```
EmpowerYou/
├── api/                    # Vercel serverless functions
│   ├── contact.js         # Contact form handler
│   ├── admin/
│   │   └── submissions.js # Admin API
│   ├── health.js          # Health check
│   ├── db.js              # Database utility
│   └── supabase.js        # Supabase integration
├── vercel.json            # Vercel configuration
├── package.json           # Dependencies (Node 24)
└── *.html                 # Frontend pages
```

## 🐛 Troubleshooting

### Functions Not Working?
- Check function logs in Vercel Dashboard → Functions
- Verify environment variables are set correctly
- Make sure you redeployed after adding variables

### Database Not Working?
- Verify Supabase credentials are correct
- Check Supabase table was created
- Check Row Level Security policy is set

### Build Errors?
- Check Node version is 24.x in package.json
- Verify all dependencies are in package.json

## 📚 Additional Resources

- [Vercel Documentation](https://vercel.com/docs)
- [Vercel Serverless Functions](https://vercel.com/docs/functions)
- [Supabase Setup Guide](./SUPABASE_SETUP.md)

## ✅ Deployment Checklist

- [ ] Code pushed to GitHub
- [ ] Vercel project created
- [ ] Environment variables added:
  - [ ] `ADMIN_PASS`
  - [ ] `SUPABASE_URL`
  - [ ] `SUPABASE_ANON_KEY`
- [ ] Supabase database set up
- [ ] Site deployed successfully
- [ ] Test contact form
- [ ] Test admin panel

---

**Your EmpowerYou website is now live on Vercel with Supabase!** 🎉

