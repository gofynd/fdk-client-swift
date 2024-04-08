

import Foundation
public extension PublicClient.Content {
    /*
        Model: BasicDetailsPayloadSchema
        Used By: Content
    */

    class BasicDetailsPayloadSchema: Codable {
        
        
        public var name: String?
        
        public var logoUrl: String?
        
        public var faviconUrl: String?
        
        public var title: String?
        
        public var metaTitle: String?
        
        public var metaDescription: String?
        
        public var metaImage: String?
        
        public var whatsNew: [WhatsNew]?
        
        public var features: [Features]?
        
        public var authentication: [String: Any]?
        
        public var businessAccount: BusinessAccount?
        
        public var sellerSupport: SellerSupport?
        
        public var copyright: String?
        
        public var address: String?
        
        public var documentationUrl: String?
        
        public var faqUrl: String?
        
        public var facebookUrl: String?
        
        public var instagramUrl: String?
        
        public var privacyUrl: String?
        
        public var twitterUrl: String?
        
        public var termsofserviceUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case logoUrl = "logo_url"
            
            case faviconUrl = "favicon_url"
            
            case title = "title"
            
            case metaTitle = "meta_title"
            
            case metaDescription = "meta_description"
            
            case metaImage = "meta_image"
            
            case whatsNew = "whats_new"
            
            case features = "features"
            
            case authentication = "authentication"
            
            case businessAccount = "business_account"
            
            case sellerSupport = "seller_support"
            
            case copyright = "copyright"
            
            case address = "address"
            
            case documentationUrl = "documentation_url"
            
            case faqUrl = "faq_url"
            
            case facebookUrl = "facebook_url"
            
            case instagramUrl = "instagram_url"
            
            case privacyUrl = "privacy_url"
            
            case twitterUrl = "twitter_url"
            
            case termsofserviceUrl = "termsofservice_url"
            
        }

        public init(address: String? = nil, authentication: [String: Any]? = nil, businessAccount: BusinessAccount? = nil, copyright: String? = nil, documentationUrl: String? = nil, facebookUrl: String? = nil, faqUrl: String? = nil, faviconUrl: String? = nil, features: [Features]? = nil, instagramUrl: String? = nil, logoUrl: String? = nil, metaDescription: String? = nil, metaImage: String? = nil, metaTitle: String? = nil, name: String? = nil, privacyUrl: String? = nil, sellerSupport: SellerSupport? = nil, termsofserviceUrl: String? = nil, title: String? = nil, twitterUrl: String? = nil, whatsNew: [WhatsNew]? = nil) {
            
            self.name = name
            
            self.logoUrl = logoUrl
            
            self.faviconUrl = faviconUrl
            
            self.title = title
            
            self.metaTitle = metaTitle
            
            self.metaDescription = metaDescription
            
            self.metaImage = metaImage
            
            self.whatsNew = whatsNew
            
            self.features = features
            
            self.authentication = authentication
            
            self.businessAccount = businessAccount
            
            self.sellerSupport = sellerSupport
            
            self.copyright = copyright
            
            self.address = address
            
            self.documentationUrl = documentationUrl
            
            self.faqUrl = faqUrl
            
            self.facebookUrl = facebookUrl
            
            self.instagramUrl = instagramUrl
            
            self.privacyUrl = privacyUrl
            
            self.twitterUrl = twitterUrl
            
            self.termsofserviceUrl = termsofserviceUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logoUrl = try container.decode(String.self, forKey: .logoUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    faviconUrl = try container.decode(String.self, forKey: .faviconUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    metaTitle = try container.decode(String.self, forKey: .metaTitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    metaDescription = try container.decode(String.self, forKey: .metaDescription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    metaImage = try container.decode(String.self, forKey: .metaImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    whatsNew = try container.decode([WhatsNew].self, forKey: .whatsNew)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    features = try container.decode([Features].self, forKey: .features)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    authentication = try container.decode([String: Any].self, forKey: .authentication)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessAccount = try container.decode(BusinessAccount.self, forKey: .businessAccount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerSupport = try container.decode(SellerSupport.self, forKey: .sellerSupport)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    copyright = try container.decode(String.self, forKey: .copyright)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    documentationUrl = try container.decode(String.self, forKey: .documentationUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    faqUrl = try container.decode(String.self, forKey: .faqUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    facebookUrl = try container.decode(String.self, forKey: .facebookUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    instagramUrl = try container.decode(String.self, forKey: .instagramUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    privacyUrl = try container.decode(String.self, forKey: .privacyUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    twitterUrl = try container.decode(String.self, forKey: .twitterUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    termsofserviceUrl = try container.decode(String.self, forKey: .termsofserviceUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
            
            
            
            try? container.encodeIfPresent(faviconUrl, forKey: .faviconUrl)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            try? container.encodeIfPresent(metaTitle, forKey: .metaTitle)
            
            
            
            try? container.encodeIfPresent(metaDescription, forKey: .metaDescription)
            
            
            
            try? container.encodeIfPresent(metaImage, forKey: .metaImage)
            
            
            
            try? container.encodeIfPresent(whatsNew, forKey: .whatsNew)
            
            
            
            try? container.encodeIfPresent(features, forKey: .features)
            
            
            
            try? container.encodeIfPresent(authentication, forKey: .authentication)
            
            
            
            try? container.encodeIfPresent(businessAccount, forKey: .businessAccount)
            
            
            
            try? container.encodeIfPresent(sellerSupport, forKey: .sellerSupport)
            
            
            
            try? container.encodeIfPresent(copyright, forKey: .copyright)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            try? container.encodeIfPresent(documentationUrl, forKey: .documentationUrl)
            
            
            
            try? container.encodeIfPresent(faqUrl, forKey: .faqUrl)
            
            
            
            try? container.encodeIfPresent(facebookUrl, forKey: .facebookUrl)
            
            
            
            try? container.encodeIfPresent(instagramUrl, forKey: .instagramUrl)
            
            
            
            try? container.encodeIfPresent(privacyUrl, forKey: .privacyUrl)
            
            
            
            try? container.encodeIfPresent(twitterUrl, forKey: .twitterUrl)
            
            
            
            try? container.encodeIfPresent(termsofserviceUrl, forKey: .termsofserviceUrl)
            
            
        }
        
    }
}
