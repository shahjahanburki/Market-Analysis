use PortfolioProject_MarketingAnalytics

select * from dbo.engagement_data

select EngagementID, ContentID, CampaignID, ProductID, 
	upper(replace(ContentType, 'sociamedia', 'Social Media')) as ContentType,
	left(ViewsClicksCombined, charindex('-', ViewsClicksCombined)-1) as Views, 
	right(ViewsClicksCombined, len(ViewsClicksCombined)- charindex('-', ViewsClicksCombined)) as Clicks,
	likes, 
	format(convert(DATE, EngagementDate), 'dd.MM.yyyy') as EngagementDate
from dbo.engagement_data where ContentType != 'Newsletter'
