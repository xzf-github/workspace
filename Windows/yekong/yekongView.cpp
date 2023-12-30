
// yekongView.cpp: CyekongView 类的实现
//

#include "pch.h"
#include "framework.h"
// SHARED_HANDLERS 可以在实现预览、缩略图和搜索筛选器句柄的
// ATL 项目中进行定义，并允许与该项目共享文档代码。
#ifndef SHARED_HANDLERS
#include "yekong.h"
#endif

#include "yekongDoc.h"
#include "yekongView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CyekongView

IMPLEMENT_DYNCREATE(CyekongView, CView)

BEGIN_MESSAGE_MAP(CyekongView, CView)
	// 标准打印命令
	ON_COMMAND(ID_FILE_PRINT, &CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, &CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, &CyekongView::OnFilePrintPreview)
	ON_WM_CONTEXTMENU()
	ON_WM_RBUTTONUP()
END_MESSAGE_MAP()

// CyekongView 构造/析构

CyekongView::CyekongView() noexcept
{
	// TODO: 在此处添加构造代码

}

CyekongView::~CyekongView()
{
}

BOOL CyekongView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: 在此处通过修改
	//  CREATESTRUCT cs 来修改窗口类或样式

	return CView::PreCreateWindow(cs);
}

// CyekongView 绘图

void CyekongView::OnDraw(CDC* /*pDC*/)
{
	CyekongDoc* pDoc = GetDocument();
	ASSERT_VALID(pDoc);
	if (!pDoc)
		return;

	// TODO: 在此处为本机数据添加绘制代码
}


// CyekongView 打印


void CyekongView::OnFilePrintPreview()
{
#ifndef SHARED_HANDLERS
	AFXPrintPreview(this);
#endif
}

BOOL CyekongView::OnPreparePrinting(CPrintInfo* pInfo)
{
	// 默认准备
	return DoPreparePrinting(pInfo);
}

void CyekongView::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: 添加额外的打印前进行的初始化过程
}

void CyekongView::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: 添加打印后进行的清理过程
}

void CyekongView::OnRButtonUp(UINT /* nFlags */, CPoint point)
{
	ClientToScreen(&point);
	OnContextMenu(this, point);
}

void CyekongView::OnContextMenu(CWnd* /* pWnd */, CPoint point)
{
#ifndef SHARED_HANDLERS
	theApp.GetContextMenuManager()->ShowPopupMenu(IDR_POPUP_EDIT, point.x, point.y, this, TRUE);
#endif
}


// CyekongView 诊断

#ifdef _DEBUG
void CyekongView::AssertValid() const
{
	CView::AssertValid();
}

void CyekongView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}

CyekongDoc* CyekongView::GetDocument() const // 非调试版本是内联的
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CyekongDoc)));
	return (CyekongDoc*)m_pDocument;
}
#endif //_DEBUG


// CyekongView 消息处理程序
