

import Foundation
public extension PublicClient.Content {
    /*
        Model: MenuSchema
        Used By: Content
    */

    class MenuSchema: Codable {
        
        
        public var salesChannel: SalesChannelSchema?
        
        public var otherSeller: OtherSellerSchema?
        
        public var footerContent: FooterContentSchema?
        
        public var canCreateBusinessAccount: Bool?
        
        public var companyLevel: [CompanyLevelMenuItemSchema]?
        
        public var applicationLevel: [ApplicationLevelMenuItemSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case salesChannel = "sales_channel"
            
            case otherSeller = "other_seller"
            
            case footerContent = "footer_content"
            
            case canCreateBusinessAccount = "can_create_business_account"
            
            case companyLevel = "company_level"
            
            case applicationLevel = "application_level"
            
        }

        public init(applicationLevel: [ApplicationLevelMenuItemSchema]? = nil, canCreateBusinessAccount: Bool? = nil, companyLevel: [CompanyLevelMenuItemSchema]? = nil, footerContent: FooterContentSchema? = nil, otherSeller: OtherSellerSchema? = nil, salesChannel: SalesChannelSchema? = nil) {
            
            self.salesChannel = salesChannel
            
            self.otherSeller = otherSeller
            
            self.footerContent = footerContent
            
            self.canCreateBusinessAccount = canCreateBusinessAccount
            
            self.companyLevel = companyLevel
            
            self.applicationLevel = applicationLevel
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    salesChannel = try container.decode(SalesChannelSchema.self, forKey: .salesChannel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    otherSeller = try container.decode(OtherSellerSchema.self, forKey: .otherSeller)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    footerContent = try container.decode(FooterContentSchema.self, forKey: .footerContent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canCreateBusinessAccount = try container.decode(Bool.self, forKey: .canCreateBusinessAccount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyLevel = try container.decode([CompanyLevelMenuItemSchema].self, forKey: .companyLevel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationLevel = try container.decode([ApplicationLevelMenuItemSchema].self, forKey: .applicationLevel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(salesChannel, forKey: .salesChannel)
            
            
            
            try? container.encodeIfPresent(otherSeller, forKey: .otherSeller)
            
            
            
            try? container.encodeIfPresent(footerContent, forKey: .footerContent)
            
            
            
            try? container.encodeIfPresent(canCreateBusinessAccount, forKey: .canCreateBusinessAccount)
            
            
            
            try? container.encodeIfPresent(companyLevel, forKey: .companyLevel)
            
            
            
            try? container.encodeIfPresent(applicationLevel, forKey: .applicationLevel)
            
            
        }
        
    }
}
