

import Foundation


public extension PlatformClient.Order {
    /*
        Model: AffiliateDetails
        Used By: Order
    */

    class AffiliateDetails: Codable {
        
        
        public var shipmentMeta: ShipmentMeta
        
        public var affiliateMeta: AffiliateMeta
        
        public var affiliateShipmentId: String
        
        public var companyAffiliateTag: String?
        
        public var affiliateOrderId: String
        
        public var pdfLinks: PDFLinks?
        
        public var config: AffiliateConfig?
        
        public var affiliateId: String?
        
        public var affiliateStoreId: String
        
        public var affiliateBagId: String
        
        public var adId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentMeta = "shipment_meta"
            
            case affiliateMeta = "affiliate_meta"
            
            case affiliateShipmentId = "affiliate_shipment_id"
            
            case companyAffiliateTag = "company_affiliate_tag"
            
            case affiliateOrderId = "affiliate_order_id"
            
            case pdfLinks = "pdf_links"
            
            case config = "config"
            
            case affiliateId = "affiliate_id"
            
            case affiliateStoreId = "affiliate_store_id"
            
            case affiliateBagId = "affiliate_bag_id"
            
            case adId = "ad_id"
            
        }

        public init(adId: String? = nil, affiliateBagId: String, affiliateId: String? = nil, affiliateMeta: AffiliateMeta, affiliateOrderId: String, affiliateShipmentId: String, affiliateStoreId: String, companyAffiliateTag: String? = nil, config: AffiliateConfig? = nil, pdfLinks: PDFLinks? = nil, shipmentMeta: ShipmentMeta) {
            
            self.shipmentMeta = shipmentMeta
            
            self.affiliateMeta = affiliateMeta
            
            self.affiliateShipmentId = affiliateShipmentId
            
            self.companyAffiliateTag = companyAffiliateTag
            
            self.affiliateOrderId = affiliateOrderId
            
            self.pdfLinks = pdfLinks
            
            self.config = config
            
            self.affiliateId = affiliateId
            
            self.affiliateStoreId = affiliateStoreId
            
            self.affiliateBagId = affiliateBagId
            
            self.adId = adId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentMeta = try container.decode(ShipmentMeta.self, forKey: .shipmentMeta)
                
            
            
            
                affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)
                
            
            
            
                affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)
                
            
            
            
                do {
                    companyAffiliateTag = try container.decode(String.self, forKey: .companyAffiliateTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
                
            
            
            
                do {
                    pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    config = try container.decode(AffiliateConfig.self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateId = try container.decode(String.self, forKey: .affiliateId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
                
            
            
            
                affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)
                
            
            
            
                do {
                    adId = try container.decode(String.self, forKey: .adId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)
            
            
            
            
            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
            
            
            
            
            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
            
            
            
            
            try? container.encodeIfPresent(companyAffiliateTag, forKey: .companyAffiliateTag)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            
            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
            
            
            
            
            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)
            
            
            
            
            try? container.encodeIfPresent(adId, forKey: .adId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: AffiliateDetails
        Used By: Order
    */

    class AffiliateDetails: Codable {
        
        
        public var shipmentMeta: ShipmentMeta
        
        public var affiliateMeta: AffiliateMeta
        
        public var affiliateShipmentId: String
        
        public var companyAffiliateTag: String?
        
        public var affiliateOrderId: String
        
        public var pdfLinks: PDFLinks?
        
        public var config: AffiliateConfig?
        
        public var affiliateId: String?
        
        public var affiliateStoreId: String
        
        public var affiliateBagId: String
        
        public var adId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentMeta = "shipment_meta"
            
            case affiliateMeta = "affiliate_meta"
            
            case affiliateShipmentId = "affiliate_shipment_id"
            
            case companyAffiliateTag = "company_affiliate_tag"
            
            case affiliateOrderId = "affiliate_order_id"
            
            case pdfLinks = "pdf_links"
            
            case config = "config"
            
            case affiliateId = "affiliate_id"
            
            case affiliateStoreId = "affiliate_store_id"
            
            case affiliateBagId = "affiliate_bag_id"
            
            case adId = "ad_id"
            
        }

        public init(adId: String? = nil, affiliateBagId: String, affiliateId: String? = nil, affiliateMeta: AffiliateMeta, affiliateOrderId: String, affiliateShipmentId: String, affiliateStoreId: String, companyAffiliateTag: String? = nil, config: AffiliateConfig? = nil, pdfLinks: PDFLinks? = nil, shipmentMeta: ShipmentMeta) {
            
            self.shipmentMeta = shipmentMeta
            
            self.affiliateMeta = affiliateMeta
            
            self.affiliateShipmentId = affiliateShipmentId
            
            self.companyAffiliateTag = companyAffiliateTag
            
            self.affiliateOrderId = affiliateOrderId
            
            self.pdfLinks = pdfLinks
            
            self.config = config
            
            self.affiliateId = affiliateId
            
            self.affiliateStoreId = affiliateStoreId
            
            self.affiliateBagId = affiliateBagId
            
            self.adId = adId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentMeta = try container.decode(ShipmentMeta.self, forKey: .shipmentMeta)
                
            
            
            
                affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)
                
            
            
            
                affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)
                
            
            
            
                do {
                    companyAffiliateTag = try container.decode(String.self, forKey: .companyAffiliateTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
                
            
            
            
                do {
                    pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    config = try container.decode(AffiliateConfig.self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateId = try container.decode(String.self, forKey: .affiliateId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
                
            
            
            
                affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)
                
            
            
            
                do {
                    adId = try container.decode(String.self, forKey: .adId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)
            
            
            
            
            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
            
            
            
            
            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
            
            
            
            
            try? container.encodeIfPresent(companyAffiliateTag, forKey: .companyAffiliateTag)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            
            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
            
            
            
            
            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)
            
            
            
            
            try? container.encodeIfPresent(adId, forKey: .adId)
            
            
        }
        
    }
}


