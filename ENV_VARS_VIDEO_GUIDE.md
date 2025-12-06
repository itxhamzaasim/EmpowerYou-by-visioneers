# 🎥 Environment Variables - Video-Style Guide

Think of this like following a recipe - step by step!

## 🍳 The Recipe (What You're Making)

You're adding "secret ingredients" (environment variables) to your Netlify website so it knows:
- What password to use for admin
- Where your database is (if using Supabase)
- How to connect to your database

## 📍 Step 1: Open Netlify

**Action:** Open your web browser
**Go to:** [app.netlify.com](https://app.netlify.com)
**Do:** Sign in with your account

**What you'll see:** A list of your websites

---

## 📍 Step 2: Find Your Website

**Action:** Look for "EmpowerYou" in the list
**Do:** Click on it (the name, not any buttons)

**What you'll see:** Your website's dashboard with tabs at the top

---

## 📍 Step 3: Open Settings

**Action:** Look at the top of the page
**Find:** A tab or button that says "Site settings" or has a gear icon ⚙️
**Do:** Click it

**What you'll see:** A new page with a menu on the left side

---

## 📍 Step 4: Find Environment Variables

**Action:** Look at the left sidebar (menu on the left)
**Find:** "Environment variables" in the list
**Do:** Click it

**What you'll see:** 
- A page that says "Environment variables"
- A button that says "Add a variable" or "Add variable"
- Maybe an empty list or some existing variables

---

## 📍 Step 5: Add Your First Variable

**Action:** Click the "Add a variable" button

**What appears:** A form with:
- A field labeled "Key" (on the left)
- A field labeled "Value" (on the right)
- Some checkboxes for "Scopes"

### Adding ADMIN_PASS:

**In the "Key" field, type:**
```
ADMIN_PASS
```
(Exactly like this - all uppercase, underscore in the middle)

**In the "Value" field, type:**
```
mySecurePassword123
```
(Replace with your own password - this is for the admin panel)

**Checkboxes:** Check all three:
- ☑ Production
- ☑ Deploy previews  
- ☑ Branch deploys

**Action:** Click the "Save" or "Add variable" button

**What happens:** The form closes and you see your variable in a list

---

## 📍 Step 6: Add More Variables (If Using Supabase)

Repeat Step 5 for each variable:

### SUPABASE_URL:
- **Key:** `SUPABASE_URL`
- **Value:** Your Supabase project URL (from Supabase dashboard)
- **Checkboxes:** All checked
- **Save**

### SUPABASE_ANON_KEY:
- **Key:** `SUPABASE_ANON_KEY`
- **Value:** Your Supabase anon key (long string from Supabase)
- **Checkboxes:** All checked
- **Save**

---

## 📍 Step 7: Go Back to Your Site

**Action:** Click your site name at the top (or use browser back)
**Do:** Go to the "Deploys" tab

**What you'll see:** A list of deployments

---

## 📍 Step 8: Redeploy

**Action:** Click "Trigger deploy" button (usually top right)
**Choose:** "Clear cache and deploy site"
**Wait:** 1-2 minutes for it to finish

**What happens:** Your site redeploys with the new environment variables

---

## ✅ Success!

Your environment variables are now set up!

## 🎯 Quick Checklist

After following all steps, you should have:

- [ ] Opened Netlify dashboard
- [ ] Found your EmpowerYou site
- [ ] Opened Site settings
- [ ] Found Environment variables
- [ ] Added `ADMIN_PASS` variable
- [ ] Added `SUPABASE_URL` (if using Supabase)
- [ ] Added `SUPABASE_ANON_KEY` (if using Supabase)
- [ ] Redeployed your site

## 🆘 Stuck on a Step?

Tell me which step number you're on and what you see on your screen, and I'll help you!

For example:
- "I'm on step 3, but I don't see Site settings"
- "I'm on step 4, but there's no Environment variables option"
- "I'm on step 5, but I don't see the Add button"

---

**Remember:** Take your time, follow each step, and you'll get it! 😊


