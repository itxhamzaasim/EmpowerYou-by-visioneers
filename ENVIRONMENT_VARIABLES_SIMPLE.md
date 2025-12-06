# 🔑 How to Add Environment Variables - Simple Version

## 🎯 What You Need to Do

Add secret settings (like passwords) to your Netlify website so it can work properly.

## 📋 Step-by-Step (Super Simple)

### 1️⃣ Go to Netlify
- Open: [app.netlify.com](https://app.netlify.com)
- Sign in

### 2️⃣ Click Your Website
- Find "EmpowerYou" (or your site name)
- Click on it

### 3️⃣ Go to Settings
- Look for **"Site settings"** (or gear icon ⚙️)
- Click it

### 4️⃣ Find Environment Variables
- In the left menu, click **"Environment variables"**

### 5️⃣ Add Variables
Click **"Add a variable"** button and add these:

#### Variable 1: Admin Password (REQUIRED)
- **Key:** `ADMIN_PASS`
- **Value:** `yourPassword123` (choose your own password)
- Check all boxes (Production, Deploy previews, Branch deploys)
- Click **Save**

#### Variable 2: Supabase URL (If using Supabase)
- **Key:** `SUPABASE_URL`
- **Value:** `https://xxxxx.supabase.co` (from Supabase dashboard)
- Check all boxes
- Click **Save**

#### Variable 3: Supabase Key (If using Supabase)
- **Key:** `SUPABASE_ANON_KEY`
- **Value:** `eyJhbGciOi...` (long string from Supabase)
- Check all boxes
- Click **Save**

### 6️⃣ Redeploy
- Go to **"Deploys"** tab
- Click **"Trigger deploy"** → **"Clear cache and deploy site"**

## ✅ Done!

Your variables are now set up!

## 🆘 Can't Find It?

**Where is "Site settings"?**
- It's usually in the top menu of your site dashboard
- Look for a gear icon ⚙️
- Or three dots menu (⋯)

**Where is "Environment variables"?**
- It's in the left sidebar of Site settings
- Scroll down if you don't see it
- It's under "Build & deploy"

## 📸 What It Looks Like

```
Netlify Dashboard
    ↓
Your Site (EmpowerYou)
    ↓
Site Settings (⚙️)
    ↓
Environment Variables (left menu)
    ↓
Add a variable (button)
    ↓
Fill Key and Value → Save
```

## 💡 Tips

- Variable names are **case-sensitive** (must be exact)
- No spaces before/after values
- After adding, **always redeploy**
- Values are hidden (you'll see ••••) - this is normal!

---

**That's it!** If you're still stuck, tell me which step you're on and I'll help! 😊


