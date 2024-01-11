

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: CommonFeature
        Used By: Configuration
    */

    class CommonFeature: Codable {
        
        
        public var communicationOptinDialog: CommunicationOptinDialogFeature?
        
        public var deploymentStoreSelection: DeploymentStoreSelectionFeature?
        
        public var listingPrice: ListingPriceFeature?
        
        public var listingPage: ListingPageFeature?
        
        public var currency: CurrencyFeature?
        
        public var revenueEngine: RevenueEngineFeature?
        
        public var feedback: FeedbackFeature?
        
        public var compareProducts: CompareProductsFeature?
        
        public var rewardPoints: RewardPointsConfig?
        
        public var internationalShipping: InternationalShipping?
        

        public enum CodingKeys: String, CodingKey {
            
            case communicationOptinDialog = "communication_optin_dialog"
            
            case deploymentStoreSelection = "deployment_store_selection"
            
            case listingPrice = "listing_price"
            
            case listingPage = "listing_page"
            
            case currency = "currency"
            
            case revenueEngine = "revenue_engine"
            
            case feedback = "feedback"
            
            case compareProducts = "compare_products"
            
            case rewardPoints = "reward_points"
            
            case internationalShipping = "international_shipping"
            
        }

        public init(communicationOptinDialog: CommunicationOptinDialogFeature? = nil, compareProducts: CompareProductsFeature? = nil, currency: CurrencyFeature? = nil, deploymentStoreSelection: DeploymentStoreSelectionFeature? = nil, feedback: FeedbackFeature? = nil, internationalShipping: InternationalShipping? = nil, listingPage: ListingPageFeature? = nil, listingPrice: ListingPriceFeature? = nil, revenueEngine: RevenueEngineFeature? = nil, rewardPoints: RewardPointsConfig? = nil) {
            
            self.communicationOptinDialog = communicationOptinDialog
            
            self.deploymentStoreSelection = deploymentStoreSelection
            
            self.listingPrice = listingPrice
            
            self.listingPage = listingPage
            
            self.currency = currency
            
            self.revenueEngine = revenueEngine
            
            self.feedback = feedback
            
            self.compareProducts = compareProducts
            
            self.rewardPoints = rewardPoints
            
            self.internationalShipping = internationalShipping
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    communicationOptinDialog = try container.decode(CommunicationOptinDialogFeature.self, forKey: .communicationOptinDialog)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deploymentStoreSelection = try container.decode(DeploymentStoreSelectionFeature.self, forKey: .deploymentStoreSelection)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    listingPrice = try container.decode(ListingPriceFeature.self, forKey: .listingPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    listingPage = try container.decode(ListingPageFeature.self, forKey: .listingPage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(CurrencyFeature.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    revenueEngine = try container.decode(RevenueEngineFeature.self, forKey: .revenueEngine)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    feedback = try container.decode(FeedbackFeature.self, forKey: .feedback)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    compareProducts = try container.decode(CompareProductsFeature.self, forKey: .compareProducts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rewardPoints = try container.decode(RewardPointsConfig.self, forKey: .rewardPoints)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    internationalShipping = try container.decode(InternationalShipping.self, forKey: .internationalShipping)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(communicationOptinDialog, forKey: .communicationOptinDialog)
            
            
            
            
            try? container.encodeIfPresent(deploymentStoreSelection, forKey: .deploymentStoreSelection)
            
            
            
            
            try? container.encodeIfPresent(listingPrice, forKey: .listingPrice)
            
            
            
            
            try? container.encodeIfPresent(listingPage, forKey: .listingPage)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(revenueEngine, forKey: .revenueEngine)
            
            
            
            
            try? container.encodeIfPresent(feedback, forKey: .feedback)
            
            
            
            
            try? container.encodeIfPresent(compareProducts, forKey: .compareProducts)
            
            
            
            
            try? container.encodeIfPresent(rewardPoints, forKey: .rewardPoints)
            
            
            
            
            try? container.encodeIfPresent(internationalShipping, forKey: .internationalShipping)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: CommonFeature
        Used By: Configuration
    */

    class CommonFeature: Codable {
        
        
        public var communicationOptinDialog: CommunicationOptinDialogFeature?
        
        public var deploymentStoreSelection: DeploymentStoreSelectionFeature?
        
        public var listingPrice: ListingPriceFeature?
        
        public var listingPage: ListingPageFeature?
        
        public var currency: CurrencyFeature?
        
        public var revenueEngine: RevenueEngineFeature?
        
        public var feedback: FeedbackFeature?
        
        public var compareProducts: CompareProductsFeature?
        
        public var rewardPoints: RewardPointsConfig?
        
        public var internationalShipping: InternationalShipping?
        

        public enum CodingKeys: String, CodingKey {
            
            case communicationOptinDialog = "communication_optin_dialog"
            
            case deploymentStoreSelection = "deployment_store_selection"
            
            case listingPrice = "listing_price"
            
            case listingPage = "listing_page"
            
            case currency = "currency"
            
            case revenueEngine = "revenue_engine"
            
            case feedback = "feedback"
            
            case compareProducts = "compare_products"
            
            case rewardPoints = "reward_points"
            
            case internationalShipping = "international_shipping"
            
        }

        public init(communicationOptinDialog: CommunicationOptinDialogFeature? = nil, compareProducts: CompareProductsFeature? = nil, currency: CurrencyFeature? = nil, deploymentStoreSelection: DeploymentStoreSelectionFeature? = nil, feedback: FeedbackFeature? = nil, internationalShipping: InternationalShipping? = nil, listingPage: ListingPageFeature? = nil, listingPrice: ListingPriceFeature? = nil, revenueEngine: RevenueEngineFeature? = nil, rewardPoints: RewardPointsConfig? = nil) {
            
            self.communicationOptinDialog = communicationOptinDialog
            
            self.deploymentStoreSelection = deploymentStoreSelection
            
            self.listingPrice = listingPrice
            
            self.listingPage = listingPage
            
            self.currency = currency
            
            self.revenueEngine = revenueEngine
            
            self.feedback = feedback
            
            self.compareProducts = compareProducts
            
            self.rewardPoints = rewardPoints
            
            self.internationalShipping = internationalShipping
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    communicationOptinDialog = try container.decode(CommunicationOptinDialogFeature.self, forKey: .communicationOptinDialog)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deploymentStoreSelection = try container.decode(DeploymentStoreSelectionFeature.self, forKey: .deploymentStoreSelection)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    listingPrice = try container.decode(ListingPriceFeature.self, forKey: .listingPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    listingPage = try container.decode(ListingPageFeature.self, forKey: .listingPage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(CurrencyFeature.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    revenueEngine = try container.decode(RevenueEngineFeature.self, forKey: .revenueEngine)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    feedback = try container.decode(FeedbackFeature.self, forKey: .feedback)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    compareProducts = try container.decode(CompareProductsFeature.self, forKey: .compareProducts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rewardPoints = try container.decode(RewardPointsConfig.self, forKey: .rewardPoints)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    internationalShipping = try container.decode(InternationalShipping.self, forKey: .internationalShipping)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(communicationOptinDialog, forKey: .communicationOptinDialog)
            
            
            
            
            try? container.encodeIfPresent(deploymentStoreSelection, forKey: .deploymentStoreSelection)
            
            
            
            
            try? container.encodeIfPresent(listingPrice, forKey: .listingPrice)
            
            
            
            
            try? container.encodeIfPresent(listingPage, forKey: .listingPage)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(revenueEngine, forKey: .revenueEngine)
            
            
            
            
            try? container.encodeIfPresent(feedback, forKey: .feedback)
            
            
            
            
            try? container.encodeIfPresent(compareProducts, forKey: .compareProducts)
            
            
            
            
            try? container.encodeIfPresent(rewardPoints, forKey: .rewardPoints)
            
            
            
            
            try? container.encodeIfPresent(internationalShipping, forKey: .internationalShipping)
            
            
        }
        
    }
}


