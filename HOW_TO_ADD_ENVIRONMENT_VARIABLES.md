# 🔧 How to Add Environment Variables in Netlify

This is a **step-by-step guide** with detailed instructions on how to add environment variables to your Netlify site.

## 📍 What Are Environment Variables?

Environment variables are secret settings (like passwords and API keys) that your website uses but are kept private. They're stored securely in Netlify and not visible in your code.

## 🚀 Step-by-Step Instructions

### Step 1: Go to Your Netlify Dashboard

1. Open your web browser
2. Go to [app.netlify.com](https://app.netlify.com)
3. **Sign in** with your account (GitHub, email, etc.)

### Step 2: Select Your Website

1. You'll see a list of your websites
2. **Click on your "EmpowerYou" website** (or whatever you named it)
3. This opens your site's dashboard

### Step 3: Open Site Settings

1. Look at the **top menu** of your site dashboard
2. You'll see tabs like: **Overview**, **Deploys**, **Functions**, **Analytics**, etc.
3. Click on **"Site settings"** (it's usually near the end of the menu, or look for a gear icon ⚙️)

### Step 4: Find Environment Variables

1. In the **left sidebar** of Site settings, you'll see a list of options:
   - General
   - Build & deploy
   - **Environment variables** ← Click this!
   - Domain management
   - Functions
   - etc.

2. Click on **"Environment variables"**

### Step 5: Add Your First Variable

You'll see a page that says **"Environment variables"** with a button to add variables.

#### For Supabase (if you set it up):

**Variable 1: SUPABASE_URL**

1. Click the **"Add a variable"** button (or **"Add variable"**)
2. A form will appear with two fields:
   - **Key** (left field)
   - **Value** (right field)

3. In the **Key** field, type exactly:
   ```
   SUPABASE_URL
   ```
   (Make sure it's all uppercase, with underscore)

4. In the **Value** field, paste your Supabase Project URL:
   ```
   https://xxxxxxxxxxxxx.supabase.co
   ```
   (This is from your Supabase dashboard → Settings → API)

5. Under **"Scopes"**, check all boxes:
   - ✅ Production
   - ✅ Deploy previews
   - ✅ Branch deploys

6. Click **"Save"** or **"Add variable"**

**Variable 2: SUPABASE_ANON_KEY**

1. Click **"Add a variable"** again
2. **Key:** Type `SUPABASE_ANON_KEY`
3. **Value:** Paste your Supabase anon/public key:
   ```
   eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh4eHh4eHh4eHh4eHh4eHh4eCIsInJvbGUiOiJhbm9uIiwiaWF0IjoxNjQwMDAwMDAwLCJleHAiOjE5NTU1NTU1NTl9.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
   ```
   (This is a long string from Supabase → Settings → API)

4. Check all **Scopes**
5. Click **"Save"**

#### For Admin Password (Required):

**Variable 3: ADMIN_PASS**

1. Click **"Add a variable"** again
2. **Key:** Type `ADMIN_PASS`
3. **Value:** Type your admin password (e.g., `mySecurePassword123`)
   - This is the password for accessing `/admin.html`
   - Choose something secure!

4. Check all **Scopes**
5. Click **"Save"**

### Step 6: Verify Your Variables

After adding, you should see a table/list with your variables:

```
Key                  Value (hidden)        Scopes
─────────────────────────────────────────────────────
SUPABASE_URL         •••••••••••••        All
SUPABASE_ANON_KEY    •••••••••••••        All
ADMIN_PASS           •••••••••••••        All
```

✅ **Perfect!** Your variables are now saved.

### Step 7: Redeploy Your Site

**Important:** After adding environment variables, you need to redeploy!

1. Go back to your site dashboard (click your site name at top)
2. Click on **"Deploys"** tab
3. Click **"Trigger deploy"** button (usually at top right)
4. Select **"Clear cache and deploy site"**
5. Wait for deployment to complete (1-2 minutes)

## 📸 Visual Guide (What You'll See)

### Netlify Dashboard Layout:
```
┌─────────────────────────────────────────┐
│  Your Site Name                    ⚙️  │
├─────────────────────────────────────────┤
│ Overview │ Deploys │ Functions │ ...   │
│          │         │           │        │
│          │         │           │        │
│  [Site Settings] ← Click here          │
└─────────────────────────────────────────┘
```

### Site Settings Sidebar:
```
┌──────────────┬──────────────────────┐
│ General      │                      │
│ Build &      │                      │
│ deploy       │                      │
│ Environment  │ ← Click this!        │
│ variables    │                      │
│ Domain       │                      │
│ Functions    │                      │
└──────────────┴──────────────────────┘
```

### Add Variable Form:
```
┌─────────────────────────────────────┐
│ Add a variable                      │
├─────────────────────────────────────┤
│ Key: [SUPABASE_URL        ]         │
│ Value: [https://xxx.supabase.co]   │
│                                     │
│ Scopes:                             │
│ ☑ Production                        │
│ ☑ Deploy previews                   │
│ ☑ Branch deploys                    │
│                                     │
│ [Cancel]  [Save]                   │
└─────────────────────────────────────┘
```

## ✅ Checklist

After following the steps, make sure you have:

- [ ] `SUPABASE_URL` variable added (if using Supabase)
- [ ] `SUPABASE_ANON_KEY` variable added (if using Supabase)
- [ ] `ADMIN_PASS` variable added (required for admin panel)
- [ ] All variables have all scopes checked
- [ ] Site has been redeployed after adding variables

## 🐛 Troubleshooting

### "I can't find Site settings"
- Look for a **gear icon** ⚙️ or **settings icon**
- It might be in a dropdown menu (three dots ...)
- Try clicking on your site name first, then look for settings

### "I don't see Environment variables option"
- Make sure you're in **Site settings**, not Account settings
- Scroll down in the left sidebar - it might be further down
- Try refreshing the page

### "Where do I get Supabase credentials?"
1. Go to [supabase.com](https://supabase.com)
2. Sign in to your account
3. Click on your project
4. Click **Settings** (gear icon) in left sidebar
5. Click **API** in the settings menu
6. Copy the **Project URL** and **anon/public key**

### "Variables added but not working"
- Make sure you **redeployed** after adding variables
- Check that variable names are **exactly** correct (case-sensitive)
- Make sure there are **no extra spaces** in the values
- Wait a few minutes and try again

### "I can't see the values after saving"
- This is **normal and secure!** Netlify hides the values
- You'll see dots (•••••) instead of the actual value
- To edit, click the variable and you can see/edit it

## 📝 Quick Reference

**Required Variables:**
- `ADMIN_PASS` - Your admin panel password

**Optional (for Supabase):**
- `SUPABASE_URL` - Your Supabase project URL
- `SUPABASE_ANON_KEY` - Your Supabase anon key

**Path to Environment Variables:**
```
Netlify Dashboard → Your Site → Site Settings → Environment Variables
```

## 🎯 Summary

1. **Go to:** Netlify Dashboard → Your Site → Site Settings
2. **Click:** Environment variables (in left sidebar)
3. **Add:** Click "Add a variable"
4. **Fill:** Key and Value fields
5. **Check:** All scopes
6. **Save:** Click Save button
7. **Redeploy:** Trigger a new deployment

That's it! Your environment variables are now set up! 🎉

---

**Still confused?** Take a screenshot of what you see and I can help you navigate to the right place!


