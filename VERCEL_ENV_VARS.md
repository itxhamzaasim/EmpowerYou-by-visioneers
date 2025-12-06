# 🔧 Vercel Environment Variables Setup

## Required Environment Variables

Add these in Vercel Dashboard → Your Project → **Settings** → **Environment Variables**:

### 1. SUPABASE_URL
```
Key: SUPABASE_URL
Value: https://qgpfqfpiwwbarxdyldmj.supabase.co
Scopes: ✅ Production, ✅ Preview, ✅ Development
```

### 2. SUPABASE_ANON_KEY
```
Key: SUPABASE_ANON_KEY
Value: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9... (your anon key)
Scopes: ✅ Production, ✅ Preview, ✅ Development
```

**Where to get it:**
- Supabase Dashboard → Settings → API → **anon/public** key

### 3. ADMIN_PASS
```
Key: ADMIN_PASS
Value: your-secure-password-here
Scopes: ✅ Production, ✅ Preview, ✅ Development
```

## 📝 Step-by-Step

1. Go to [vercel.com](https://vercel.com) → Your Project
2. Click **Settings** tab
3. Click **Environment Variables** in left menu
4. Click **Add New**
5. Add each variable:
   - Type the Key
   - Paste the Value
   - Check all scopes
   - Click **Save**
6. Repeat for all 3 variables
7. Go to **Deployments** tab
8. Click **Redeploy** on latest deployment

## ✅ Verification

After redeploying:
1. Visit: `https://your-project.vercel.app/api/health`
2. Submit a test form
3. Check Supabase Dashboard → Table Editor → submissions
4. You should see your submission!

---

**That's it!** Your Supabase is now connected! 🎉

