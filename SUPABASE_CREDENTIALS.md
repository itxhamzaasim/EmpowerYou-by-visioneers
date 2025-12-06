# 🔑 Your Supabase Credentials

## Your Supabase Project

**Supabase URL:**
```
https://qgpfqfpiwwbarxdyldmj.supabase.co
```

## ⚠️ Important: Which Key to Use

### ✅ Use: `SUPABASE_ANON_KEY` (Recommended)
- This is the **anon/public key** from Supabase
- Safe to use in serverless functions
- Found in: Supabase Dashboard → Settings → API → **anon/public** key

### ❌ Don't Use: `SUPABASE_KEY` (Service Role)
- This is the **service_role** key (more powerful)
- Should NOT be exposed in serverless functions
- Only use for admin operations on secure backend

## 📋 Environment Variables for Vercel

Add these to Vercel Dashboard → Environment Variables:

### Variable 1: SUPABASE_URL
- **Key:** `SUPABASE_URL`
- **Value:** `https://qgpfqfpiwwbarxdyldmj.supabase.co`
- **Scopes:** All (Production, Preview, Development)

### Variable 2: SUPABASE_ANON_KEY
- **Key:** `SUPABASE_ANON_KEY`
- **Value:** Your anon/public key from Supabase
- **Scopes:** All (Production, Preview, Development)

## 🔍 How to Get Your Anon Key

1. Go to [supabase.com](https://supabase.com)
2. Sign in to your account
3. Select your project
4. Go to **Settings** (gear icon) → **API**
5. Find **"anon public"** key (starts with `eyJhbGciOi...`)
6. Copy that key (NOT the service_role key)

## ✅ After Adding to Vercel

1. Go to Vercel Dashboard → Your Project
2. **Settings** → **Environment Variables**
3. Add both variables
4. **Redeploy** your site

## 🧪 Test Connection

After deployment, test:
- Visit: `https://your-project.vercel.app/api/health`
- Should show: `"environment": "vercel"`
- Submit a test form
- Check Supabase Dashboard → Table Editor → submissions

---

**Your Supabase is ready!** Just add the credentials to Vercel! 🚀

