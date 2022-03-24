import Foundation


import Foundation
public extension ApplicationClient {
  
        /*
            Model: AggregatorConfigDetail
            Used By: Payment
        */
        class AggregatorConfigDetail: Codable {
            
            public var merchantId: String?
            
            public var merchantKey: String?
            
            public var verifyApi: String?
            
            public var sdk: Bool?
            
            public var pin: String?
            
            public var secret: String
            
            public var userId: String?
            
            public var api: String?
            
            public var key: String
            
            public var configType: String
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantId = "merchant_id"
                
                case merchantKey = "merchant_key"
                
                case verifyApi = "verify_api"
                
                case sdk = "sdk"
                
                case pin = "pin"
                
                case secret = "secret"
                
                case userId = "user_id"
                
                case api = "api"
                
                case key = "key"
                
                case configType = "config_type"
                
            }

            public init(api: String?, configType: String, key: String, merchantId: String?, merchantKey: String?, pin: String?, sdk: Bool?, secret: String, userId: String?, verifyApi: String?) {
                
                self.merchantId = merchantId
                
                self.merchantKey = merchantKey
                
                self.verifyApi = verifyApi
                
                self.sdk = sdk
                
                self.pin = pin
                
                self.secret = secret
                
                self.userId = userId
                
                self.api = api
                
                self.key = key
                
                self.configType = configType
                
            }

            public func duplicate() -> AggregatorConfigDetail {
                let dict = self.dictionary!
                let copy = AggregatorConfigDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    merchantId = try container.decode(String.self, forKey: .merchantId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    merchantKey = try container.decode(String.self, forKey: .merchantKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verifyApi = try container.decode(String.self, forKey: .verifyApi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sdk = try container.decode(Bool.self, forKey: .sdk)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pin = try container.decode(String.self, forKey: .pin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                secret = try container.decode(String.self, forKey: .secret)
                
                
                
                
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    api = try container.decode(String.self, forKey: .api)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                key = try container.decode(String.self, forKey: .key)
                
                
                
                
                configType = try container.decode(String.self, forKey: .configType)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(merchantId, forKey: .merchantId)
                
                
                
                
                try? container.encode(merchantKey, forKey: .merchantKey)
                
                
                
                
                try? container.encode(verifyApi, forKey: .verifyApi)
                
                
                
                
                try? container.encode(sdk, forKey: .sdk)
                
                
                
                
                try? container.encode(pin, forKey: .pin)
                
                
                
                
                try? container.encodeIfPresent(secret, forKey: .secret)
                
                
                
                
                try? container.encode(userId, forKey: .userId)
                
                
                
                
                try? container.encode(api, forKey: .api)
                
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(configType, forKey: .configType)
                
                
            }
            
        }
        
        /*
            Model: AggregatorsConfigDetailResponse
            Used By: Payment
        */
        class AggregatorsConfigDetailResponse: Codable {
            
            public var payumoney: AggregatorConfigDetail?
            
            public var stripe: AggregatorConfigDetail?
            
            public var success: Bool
            
            public var simpl: AggregatorConfigDetail?
            
            public var razorpay: AggregatorConfigDetail?
            
            public var env: String
            
            public var mswipe: AggregatorConfigDetail?
            
            public var ccavenue: AggregatorConfigDetail?
            
            public var rupifi: AggregatorConfigDetail?
            
            public var juspay: AggregatorConfigDetail?
            

            public enum CodingKeys: String, CodingKey {
                
                case payumoney = "payumoney"
                
                case stripe = "stripe"
                
                case success = "success"
                
                case simpl = "simpl"
                
                case razorpay = "razorpay"
                
                case env = "env"
                
                case mswipe = "mswipe"
                
                case ccavenue = "ccavenue"
                
                case rupifi = "rupifi"
                
                case juspay = "juspay"
                
            }

            public init(ccavenue: AggregatorConfigDetail?, env: String, juspay: AggregatorConfigDetail?, mswipe: AggregatorConfigDetail?, payumoney: AggregatorConfigDetail?, razorpay: AggregatorConfigDetail?, rupifi: AggregatorConfigDetail?, simpl: AggregatorConfigDetail?, stripe: AggregatorConfigDetail?, success: Bool) {
                
                self.payumoney = payumoney
                
                self.stripe = stripe
                
                self.success = success
                
                self.simpl = simpl
                
                self.razorpay = razorpay
                
                self.env = env
                
                self.mswipe = mswipe
                
                self.ccavenue = ccavenue
                
                self.rupifi = rupifi
                
                self.juspay = juspay
                
            }

            public func duplicate() -> AggregatorsConfigDetailResponse {
                let dict = self.dictionary!
                let copy = AggregatorsConfigDetailResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    payumoney = try container.decode(AggregatorConfigDetail.self, forKey: .payumoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    stripe = try container.decode(AggregatorConfigDetail.self, forKey: .stripe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    simpl = try container.decode(AggregatorConfigDetail.self, forKey: .simpl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    razorpay = try container.decode(AggregatorConfigDetail.self, forKey: .razorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                env = try container.decode(String.self, forKey: .env)
                
                
                
                
                do {
                    mswipe = try container.decode(AggregatorConfigDetail.self, forKey: .mswipe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    ccavenue = try container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    rupifi = try container.decode(AggregatorConfigDetail.self, forKey: .rupifi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    juspay = try container.decode(AggregatorConfigDetail.self, forKey: .juspay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(payumoney, forKey: .payumoney)
                
                
                
                
                try? container.encodeIfPresent(stripe, forKey: .stripe)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(simpl, forKey: .simpl)
                
                
                
                
                try? container.encodeIfPresent(razorpay, forKey: .razorpay)
                
                
                
                
                try? container.encodeIfPresent(env, forKey: .env)
                
                
                
                
                try? container.encodeIfPresent(mswipe, forKey: .mswipe)
                
                
                
                
                try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
                
                
                
                
                try? container.encodeIfPresent(rupifi, forKey: .rupifi)
                
                
                
                
                try? container.encodeIfPresent(juspay, forKey: .juspay)
                
                
            }
            
        }
        
        /*
            Model: ErrorCodeAndDescription
            Used By: Payment
        */
        class ErrorCodeAndDescription: Codable {
            
            public var code: String
            
            public var description: String
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case description = "description"
                
            }

            public init(code: String, description: String) {
                
                self.code = code
                
                self.description = description
                
            }

            public func duplicate() -> ErrorCodeAndDescription {
                let dict = self.dictionary!
                let copy = ErrorCodeAndDescription(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                code = try container.decode(String.self, forKey: .code)
                
                
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
            }
            
        }
        
        /*
            Model: HttpErrorCodeAndResponse
            Used By: Payment
        */
        class HttpErrorCodeAndResponse: Codable {
            
            public var error: ErrorCodeAndDescription
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case error = "error"
                
                case success = "success"
                
            }

            public init(error: ErrorCodeAndDescription, success: Bool) {
                
                self.error = error
                
                self.success = success
                
            }

            public func duplicate() -> HttpErrorCodeAndResponse {
                let dict = self.dictionary!
                let copy = HttpErrorCodeAndResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                error = try container.decode(ErrorCodeAndDescription.self, forKey: .error)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: AttachCardRequest
            Used By: Payment
        */
        class AttachCardRequest: Codable {
            
            public var refresh: Bool?
            
            public var nameOnCard: String?
            
            public var cardId: String
            
            public var nickname: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case refresh = "refresh"
                
                case nameOnCard = "name_on_card"
                
                case cardId = "card_id"
                
                case nickname = "nickname"
                
            }

            public init(cardId: String, nameOnCard: String?, nickname: String?, refresh: Bool?) {
                
                self.refresh = refresh
                
                self.nameOnCard = nameOnCard
                
                self.cardId = cardId
                
                self.nickname = nickname
                
            }

            public func duplicate() -> AttachCardRequest {
                let dict = self.dictionary!
                let copy = AttachCardRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    refresh = try container.decode(Bool.self, forKey: .refresh)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    nameOnCard = try container.decode(String.self, forKey: .nameOnCard)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                cardId = try container.decode(String.self, forKey: .cardId)
                
                
                
                
                do {
                    nickname = try container.decode(String.self, forKey: .nickname)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(refresh, forKey: .refresh)
                
                
                
                
                try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
                
                
                try? container.encodeIfPresent(nickname, forKey: .nickname)
                
                
            }
            
        }
        
        /*
            Model: AttachCardsResponse
            Used By: Payment
        */
        class AttachCardsResponse: Codable {
            
            public var message: String?
            
            public var data: [String: Any]
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case data = "data"
                
                case success = "success"
                
            }

            public init(data: [String: Any], message: String?, success: Bool) {
                
                self.message = message
                
                self.data = data
                
                self.success = success
                
            }

            public func duplicate() -> AttachCardsResponse {
                let dict = self.dictionary!
                let copy = AttachCardsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                data = try container.decode([String: Any].self, forKey: .data)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: CardPaymentGateway
            Used By: Payment
        */
        class CardPaymentGateway: Codable {
            
            public var aggregator: String
            
            public var customerId: String?
            
            public var api: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregator = "aggregator"
                
                case customerId = "customer_id"
                
                case api = "api"
                
            }

            public init(aggregator: String, api: String?, customerId: String?) {
                
                self.aggregator = aggregator
                
                self.customerId = customerId
                
                self.api = api
                
            }

            public func duplicate() -> CardPaymentGateway {
                let dict = self.dictionary!
                let copy = CardPaymentGateway(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                do {
                    customerId = try container.decode(String.self, forKey: .customerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    api = try container.decode(String.self, forKey: .api)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(customerId, forKey: .customerId)
                
                
                
                
                try? container.encode(api, forKey: .api)
                
                
            }
            
        }
        
        /*
            Model: ActiveCardPaymentGatewayResponse
            Used By: Payment
        */
        class ActiveCardPaymentGatewayResponse: Codable {
            
            public var message: String
            
            public var cards: CardPaymentGateway
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case cards = "cards"
                
                case success = "success"
                
            }

            public init(cards: CardPaymentGateway, message: String, success: Bool) {
                
                self.message = message
                
                self.cards = cards
                
                self.success = success
                
            }

            public func duplicate() -> ActiveCardPaymentGatewayResponse {
                let dict = self.dictionary!
                let copy = ActiveCardPaymentGatewayResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                cards = try container.decode(CardPaymentGateway.self, forKey: .cards)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(cards, forKey: .cards)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: Card
            Used By: Payment
        */
        class Card: Codable {
            
            public var cardBrandImage: String?
            
            public var cardName: String?
            
            public var cardId: String?
            
            public var cardIsin: String?
            
            public var expYear: Int?
            
            public var cardType: String?
            
            public var nickname: String?
            
            public var cardToken: String?
            
            public var cardNumber: String?
            
            public var cardBrand: String?
            
            public var expired: Bool?
            
            public var cardFingerprint: String?
            
            public var expMonth: Int?
            
            public var cardReference: String?
            
            public var aggregatorName: String
            
            public var cardIssuer: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardBrandImage = "card_brand_image"
                
                case cardName = "card_name"
                
                case cardId = "card_id"
                
                case cardIsin = "card_isin"
                
                case expYear = "exp_year"
                
                case cardType = "card_type"
                
                case nickname = "nickname"
                
                case cardToken = "card_token"
                
                case cardNumber = "card_number"
                
                case cardBrand = "card_brand"
                
                case expired = "expired"
                
                case cardFingerprint = "card_fingerprint"
                
                case expMonth = "exp_month"
                
                case cardReference = "card_reference"
                
                case aggregatorName = "aggregator_name"
                
                case cardIssuer = "card_issuer"
                
            }

            public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, expired: Bool?, expMonth: Int?, expYear: Int?, nickname: String?) {
                
                self.cardBrandImage = cardBrandImage
                
                self.cardName = cardName
                
                self.cardId = cardId
                
                self.cardIsin = cardIsin
                
                self.expYear = expYear
                
                self.cardType = cardType
                
                self.nickname = nickname
                
                self.cardToken = cardToken
                
                self.cardNumber = cardNumber
                
                self.cardBrand = cardBrand
                
                self.expired = expired
                
                self.cardFingerprint = cardFingerprint
                
                self.expMonth = expMonth
                
                self.cardReference = cardReference
                
                self.aggregatorName = aggregatorName
                
                self.cardIssuer = cardIssuer
                
            }

            public func duplicate() -> Card {
                let dict = self.dictionary!
                let copy = Card(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardName = try container.decode(String.self, forKey: .cardName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardId = try container.decode(String.self, forKey: .cardId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardIsin = try container.decode(String.self, forKey: .cardIsin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expYear = try container.decode(Int.self, forKey: .expYear)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardType = try container.decode(String.self, forKey: .cardType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    nickname = try container.decode(String.self, forKey: .nickname)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardToken = try container.decode(String.self, forKey: .cardToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardBrand = try container.decode(String.self, forKey: .cardBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expired = try container.decode(Bool.self, forKey: .expired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardReference = try container.decode(String.self, forKey: .cardReference)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
                
                do {
                    cardIssuer = try container.decode(String.self, forKey: .cardIssuer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(cardBrandImage, forKey: .cardBrandImage)
                
                
                
                
                try? container.encode(cardName, forKey: .cardName)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
                
                
                try? container.encode(cardIsin, forKey: .cardIsin)
                
                
                
                
                try? container.encode(expYear, forKey: .expYear)
                
                
                
                
                try? container.encode(cardType, forKey: .cardType)
                
                
                
                
                try? container.encode(nickname, forKey: .nickname)
                
                
                
                
                try? container.encode(cardToken, forKey: .cardToken)
                
                
                
                
                try? container.encode(cardNumber, forKey: .cardNumber)
                
                
                
                
                try? container.encode(cardBrand, forKey: .cardBrand)
                
                
                
                
                try? container.encode(expired, forKey: .expired)
                
                
                
                
                try? container.encode(cardFingerprint, forKey: .cardFingerprint)
                
                
                
                
                try? container.encode(expMonth, forKey: .expMonth)
                
                
                
                
                try? container.encode(cardReference, forKey: .cardReference)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encode(cardIssuer, forKey: .cardIssuer)
                
                
            }
            
        }
        
        /*
            Model: ListCardsResponse
            Used By: Payment
        */
        class ListCardsResponse: Codable {
            
            public var message: String
            
            public var data: [Card]?
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case data = "data"
                
                case success = "success"
                
            }

            public init(data: [Card]?, message: String, success: Bool) {
                
                self.message = message
                
                self.data = data
                
                self.success = success
                
            }

            public func duplicate() -> ListCardsResponse {
                let dict = self.dictionary!
                let copy = ListCardsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                do {
                    data = try container.decode([Card].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: DeletehCardRequest
            Used By: Payment
        */
        class DeletehCardRequest: Codable {
            
            public var cardId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case cardId = "card_id"
                
            }

            public init(cardId: String) {
                
                self.cardId = cardId
                
            }

            public func duplicate() -> DeletehCardRequest {
                let dict = self.dictionary!
                let copy = DeletehCardRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                cardId = try container.decode(String.self, forKey: .cardId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
            }
            
        }
        
        /*
            Model: DeleteCardsResponse
            Used By: Payment
        */
        class DeleteCardsResponse: Codable {
            
            public var message: String?
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
            }

            public init(message: String?, success: Bool) {
                
                self.message = message
                
                self.success = success
                
            }

            public func duplicate() -> DeleteCardsResponse {
                let dict = self.dictionary!
                let copy = DeleteCardsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: ValidateCustomerRequest
            Used By: Payment
        */
        class ValidateCustomerRequest: Codable {
            
            public var transactionAmountInPaise: Int
            
            public var phoneNumber: String
            
            public var aggregator: String
            
            public var payload: String
            
            public var merchantParams: [String: Any]
            

            public enum CodingKeys: String, CodingKey {
                
                case transactionAmountInPaise = "transaction_amount_in_paise"
                
                case phoneNumber = "phone_number"
                
                case aggregator = "aggregator"
                
                case payload = "payload"
                
                case merchantParams = "merchant_params"
                
            }

            public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
                
                self.transactionAmountInPaise = transactionAmountInPaise
                
                self.phoneNumber = phoneNumber
                
                self.aggregator = aggregator
                
                self.payload = payload
                
                self.merchantParams = merchantParams
                
            }

            public func duplicate() -> ValidateCustomerRequest {
                let dict = self.dictionary!
                let copy = ValidateCustomerRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
                
                
                
                
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                payload = try container.decode(String.self, forKey: .payload)
                
                
                
                
                merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
                
                
                
                
                try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(payload, forKey: .payload)
                
                
                
                
                try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
                
                
            }
            
        }
        
        /*
            Model: ValidateCustomerResponse
            Used By: Payment
        */
        class ValidateCustomerResponse: Codable {
            
            public var message: String
            
            public var data: [String: Any]
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case data = "data"
                
                case success = "success"
                
            }

            public init(data: [String: Any], message: String, success: Bool) {
                
                self.message = message
                
                self.data = data
                
                self.success = success
                
            }

            public func duplicate() -> ValidateCustomerResponse {
                let dict = self.dictionary!
                let copy = ValidateCustomerResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                data = try container.decode([String: Any].self, forKey: .data)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: ChargeCustomerRequest
            Used By: Payment
        */
        class ChargeCustomerRequest: Codable {
            
            public var amount: Int
            
            public var transactionToken: String?
            
            public var orderId: String
            
            public var verified: Bool?
            
            public var aggregator: String
            

            public enum CodingKeys: String, CodingKey {
                
                case amount = "amount"
                
                case transactionToken = "transaction_token"
                
                case orderId = "order_id"
                
                case verified = "verified"
                
                case aggregator = "aggregator"
                
            }

            public init(aggregator: String, amount: Int, orderId: String, transactionToken: String?, verified: Bool?) {
                
                self.amount = amount
                
                self.transactionToken = transactionToken
                
                self.orderId = orderId
                
                self.verified = verified
                
                self.aggregator = aggregator
                
            }

            public func duplicate() -> ChargeCustomerRequest {
                let dict = self.dictionary!
                let copy = ChargeCustomerRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                
                do {
                    transactionToken = try container.decode(String.self, forKey: .transactionToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encode(transactionToken, forKey: .transactionToken)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encode(verified, forKey: .verified)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
            }
            
        }
        
        /*
            Model: ChargeCustomerResponse
            Used By: Payment
        */
        class ChargeCustomerResponse: Codable {
            
            public var message: String
            
            public var success: Bool
            
            public var cartId: String?
            
            public var orderId: String
            
            public var aggregator: String
            
            public var deliveryAddressId: String?
            
            public var status: String
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
                case cartId = "cart_id"
                
                case orderId = "order_id"
                
                case aggregator = "aggregator"
                
                case deliveryAddressId = "delivery_address_id"
                
                case status = "status"
                
            }

            public init(aggregator: String, cartId: String?, deliveryAddressId: String?, message: String, orderId: String, status: String, success: Bool) {
                
                self.message = message
                
                self.success = success
                
                self.cartId = cartId
                
                self.orderId = orderId
                
                self.aggregator = aggregator
                
                self.deliveryAddressId = deliveryAddressId
                
                self.status = status
                
            }

            public func duplicate() -> ChargeCustomerResponse {
                let dict = self.dictionary!
                let copy = ChargeCustomerResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    cartId = try container.decode(String.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                do {
                    deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encode(cartId, forKey: .cartId)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
            }
            
        }
        
        /*
            Model: PaymentInitializationRequest
            Used By: Payment
        */
        class PaymentInitializationRequest: Codable {
            
            public var amount: Int
            
            public var contact: String
            
            public var merchantOrderId: String
            
            public var vpa: String?
            
            public var currency: String
            
            public var orderId: String
            
            public var aggregator: String
            
            public var customerId: String
            
            public var method: String
            
            public var razorpayPaymentId: String?
            
            public var email: String
            
            public var timeout: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case amount = "amount"
                
                case contact = "contact"
                
                case merchantOrderId = "merchant_order_id"
                
                case vpa = "vpa"
                
                case currency = "currency"
                
                case orderId = "order_id"
                
                case aggregator = "aggregator"
                
                case customerId = "customer_id"
                
                case method = "method"
                
                case razorpayPaymentId = "razorpay_payment_id"
                
                case email = "email"
                
                case timeout = "timeout"
                
            }

            public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String?, timeout: Int?, vpa: String?) {
                
                self.amount = amount
                
                self.contact = contact
                
                self.merchantOrderId = merchantOrderId
                
                self.vpa = vpa
                
                self.currency = currency
                
                self.orderId = orderId
                
                self.aggregator = aggregator
                
                self.customerId = customerId
                
                self.method = method
                
                self.razorpayPaymentId = razorpayPaymentId
                
                self.email = email
                
                self.timeout = timeout
                
            }

            public func duplicate() -> PaymentInitializationRequest {
                let dict = self.dictionary!
                let copy = PaymentInitializationRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                
                contact = try container.decode(String.self, forKey: .contact)
                
                
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
            }
            
        }
        
        /*
            Model: PaymentInitializationResponse
            Used By: Payment
        */
        class PaymentInitializationResponse: Codable {
            
            public var amount: Int?
            
            public var upiPollUrl: String?
            
            public var merchantOrderId: String
            
            public var bqrImage: String?
            
            public var vpa: String?
            
            public var razorpayPaymentId: String?
            
            public var virtualId: String?
            
            public var success: Bool
            
            public var currency: String?
            
            public var aggregator: String
            
            public var pollingUrl: String
            
            public var customerId: String?
            
            public var aggregatorOrderId: String?
            
            public var method: String
            
            public var status: String?
            
            public var timeout: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case amount = "amount"
                
                case upiPollUrl = "upi_poll_url"
                
                case merchantOrderId = "merchant_order_id"
                
                case bqrImage = "bqr_image"
                
                case vpa = "vpa"
                
                case razorpayPaymentId = "razorpay_payment_id"
                
                case virtualId = "virtual_id"
                
                case success = "success"
                
                case currency = "currency"
                
                case aggregator = "aggregator"
                
                case pollingUrl = "polling_url"
                
                case customerId = "customer_id"
                
                case aggregatorOrderId = "aggregator_order_id"
                
                case method = "method"
                
                case status = "status"
                
                case timeout = "timeout"
                
            }

            public init(aggregator: String, aggregatorOrderId: String?, amount: Int?, bqrImage: String?, currency: String?, customerId: String?, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String?, status: String?, success: Bool, timeout: Int?, upiPollUrl: String?, virtualId: String?, vpa: String?) {
                
                self.amount = amount
                
                self.upiPollUrl = upiPollUrl
                
                self.merchantOrderId = merchantOrderId
                
                self.bqrImage = bqrImage
                
                self.vpa = vpa
                
                self.razorpayPaymentId = razorpayPaymentId
                
                self.virtualId = virtualId
                
                self.success = success
                
                self.currency = currency
                
                self.aggregator = aggregator
                
                self.pollingUrl = pollingUrl
                
                self.customerId = customerId
                
                self.aggregatorOrderId = aggregatorOrderId
                
                self.method = method
                
                self.status = status
                
                self.timeout = timeout
                
            }

            public func duplicate() -> PaymentInitializationResponse {
                let dict = self.dictionary!
                let copy = PaymentInitializationResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                do {
                    bqrImage = try container.decode(String.self, forKey: .bqrImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    virtualId = try container.decode(String.self, forKey: .virtualId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
                
                
                
                
                do {
                    customerId = try container.decode(String.self, forKey: .customerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encode(upiPollUrl, forKey: .upiPollUrl)
                
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encode(bqrImage, forKey: .bqrImage)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
                
                
                try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
                
                
                
                
                try? container.encode(virtualId, forKey: .virtualId)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encode(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
                
                
                
                
                try? container.encode(customerId, forKey: .customerId)
                
                
                
                
                try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateRequest
            Used By: Payment
        */
        class PaymentStatusUpdateRequest: Codable {
            
            public var amount: Int
            
            public var contact: String
            
            public var merchantOrderId: String
            
            public var vpa: String
            
            public var currency: String
            
            public var orderId: String
            
            public var aggregator: String
            
            public var customerId: String
            
            public var method: String
            
            public var email: String
            
            public var status: String
            

            public enum CodingKeys: String, CodingKey {
                
                case amount = "amount"
                
                case contact = "contact"
                
                case merchantOrderId = "merchant_order_id"
                
                case vpa = "vpa"
                
                case currency = "currency"
                
                case orderId = "order_id"
                
                case aggregator = "aggregator"
                
                case customerId = "customer_id"
                
                case method = "method"
                
                case email = "email"
                
                case status = "status"
                
            }

            public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
                
                self.amount = amount
                
                self.contact = contact
                
                self.merchantOrderId = merchantOrderId
                
                self.vpa = vpa
                
                self.currency = currency
                
                self.orderId = orderId
                
                self.aggregator = aggregator
                
                self.customerId = customerId
                
                self.method = method
                
                self.email = email
                
                self.status = status
                
            }

            public func duplicate() -> PaymentStatusUpdateRequest {
                let dict = self.dictionary!
                let copy = PaymentStatusUpdateRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                
                contact = try container.decode(String.self, forKey: .contact)
                
                
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                vpa = try container.decode(String.self, forKey: .vpa)
                
                
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encodeIfPresent(vpa, forKey: .vpa)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateResponse
            Used By: Payment
        */
        class PaymentStatusUpdateResponse: Codable {
            
            public var retry: Bool
            
            public var status: String
            
            public var aggregatorName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case retry = "retry"
                
                case status = "status"
                
                case aggregatorName = "aggregator_name"
                
            }

            public init(aggregatorName: String, retry: Bool, status: String) {
                
                self.retry = retry
                
                self.status = status
                
                self.aggregatorName = aggregatorName
                
            }

            public func duplicate() -> PaymentStatusUpdateResponse {
                let dict = self.dictionary!
                let copy = PaymentStatusUpdateResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                retry = try container.decode(Bool.self, forKey: .retry)
                
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(retry, forKey: .retry)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
            }
            
        }
        
        /*
            Model: PaymentModeLogo
            Used By: Payment
        */
        class PaymentModeLogo: Codable {
            
            public var small: String
            
            public var large: String
            

            public enum CodingKeys: String, CodingKey {
                
                case small = "small"
                
                case large = "large"
                
            }

            public init(large: String, small: String) {
                
                self.small = small
                
                self.large = large
                
            }

            public func duplicate() -> PaymentModeLogo {
                let dict = self.dictionary!
                let copy = PaymentModeLogo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                small = try container.decode(String.self, forKey: .small)
                
                
                
                
                large = try container.decode(String.self, forKey: .large)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(small, forKey: .small)
                
                
                
                
                try? container.encodeIfPresent(large, forKey: .large)
                
                
            }
            
        }
        
        /*
            Model: IntentApp
            Used By: Payment
        */
        class IntentApp: Codable {
            
            public var packageName: String?
            
            public var displayName: String?
            
            public var code: String?
            
            public var logos: PaymentModeLogo?
            

            public enum CodingKeys: String, CodingKey {
                
                case packageName = "package_name"
                
                case displayName = "display_name"
                
                case code = "code"
                
                case logos = "logos"
                
            }

            public init(code: String?, displayName: String?, logos: PaymentModeLogo?, packageName: String?) {
                
                self.packageName = packageName
                
                self.displayName = displayName
                
                self.code = code
                
                self.logos = logos
                
            }

            public func duplicate() -> IntentApp {
                let dict = self.dictionary!
                let copy = IntentApp(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    packageName = try container.decode(String.self, forKey: .packageName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logos = try container.decode(PaymentModeLogo.self, forKey: .logos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(packageName, forKey: .packageName)
                
                
                
                
                try? container.encode(displayName, forKey: .displayName)
                
                
                
                
                try? container.encode(code, forKey: .code)
                
                
                
                
                try? container.encode(logos, forKey: .logos)
                
                
            }
            
        }
        
        /*
            Model: IntentAppErrorList
            Used By: Payment
        */
        class IntentAppErrorList: Codable {
            
            public var packageName: String?
            
            public var code: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case packageName = "package_name"
                
                case code = "code"
                
            }

            public init(code: String?, packageName: String?) {
                
                self.packageName = packageName
                
                self.code = code
                
            }

            public func duplicate() -> IntentAppErrorList {
                let dict = self.dictionary!
                let copy = IntentAppErrorList(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    packageName = try container.decode(String.self, forKey: .packageName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(packageName, forKey: .packageName)
                
                
                
                
                try? container.encode(code, forKey: .code)
                
                
            }
            
        }
        
        /*
            Model: PaymentModeList
            Used By: Payment
        */
        class PaymentModeList: Codable {
            
            public var retryCount: Int?
            
            public var fyndVpa: String?
            
            public var displayPriority: Int?
            
            public var expired: Bool?
            
            public var merchantCode: String?
            
            public var intentAppErrorList: [String]?
            
            public var name: String?
            
            public var timeout: Int?
            
            public var cardBrandImage: String?
            
            public var cardName: String?
            
            public var cardId: String?
            
            public var expYear: Int?
            
            public var intentApp: [IntentApp]?
            
            public var cardBrand: String?
            
            public var displayName: String?
            
            public var aggregatorName: String
            
            public var cardIssuer: String?
            
            public var cardType: String?
            
            public var intentFlow: Bool?
            
            public var cardNumber: String?
            
            public var code: String?
            
            public var cardToken: String?
            
            public var cardIsin: String?
            
            public var nickname: String?
            
            public var logoUrl: PaymentModeLogo?
            
            public var cardFingerprint: String?
            
            public var expMonth: Int?
            
            public var cardReference: String?
            
            public var intentAppErrorDictList: [IntentAppErrorList]?
            

            public enum CodingKeys: String, CodingKey {
                
                case retryCount = "retry_count"
                
                case fyndVpa = "fynd_vpa"
                
                case displayPriority = "display_priority"
                
                case expired = "expired"
                
                case merchantCode = "merchant_code"
                
                case intentAppErrorList = "intent_app_error_list"
                
                case name = "name"
                
                case timeout = "timeout"
                
                case cardBrandImage = "card_brand_image"
                
                case cardName = "card_name"
                
                case cardId = "card_id"
                
                case expYear = "exp_year"
                
                case intentApp = "intent_app"
                
                case cardBrand = "card_brand"
                
                case displayName = "display_name"
                
                case aggregatorName = "aggregator_name"
                
                case cardIssuer = "card_issuer"
                
                case cardType = "card_type"
                
                case intentFlow = "intent_flow"
                
                case cardNumber = "card_number"
                
                case code = "code"
                
                case cardToken = "card_token"
                
                case cardIsin = "card_isin"
                
                case nickname = "nickname"
                
                case logoUrl = "logo_url"
                
                case cardFingerprint = "card_fingerprint"
                
                case expMonth = "exp_month"
                
                case cardReference = "card_reference"
                
                case intentAppErrorDictList = "intent_app_error_dict_list"
                
            }

            public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
                
                self.retryCount = retryCount
                
                self.fyndVpa = fyndVpa
                
                self.displayPriority = displayPriority
                
                self.expired = expired
                
                self.merchantCode = merchantCode
                
                self.intentAppErrorList = intentAppErrorList
                
                self.name = name
                
                self.timeout = timeout
                
                self.cardBrandImage = cardBrandImage
                
                self.cardName = cardName
                
                self.cardId = cardId
                
                self.expYear = expYear
                
                self.intentApp = intentApp
                
                self.cardBrand = cardBrand
                
                self.displayName = displayName
                
                self.aggregatorName = aggregatorName
                
                self.cardIssuer = cardIssuer
                
                self.cardType = cardType
                
                self.intentFlow = intentFlow
                
                self.cardNumber = cardNumber
                
                self.code = code
                
                self.cardToken = cardToken
                
                self.cardIsin = cardIsin
                
                self.nickname = nickname
                
                self.logoUrl = logoUrl
                
                self.cardFingerprint = cardFingerprint
                
                self.expMonth = expMonth
                
                self.cardReference = cardReference
                
                self.intentAppErrorDictList = intentAppErrorDictList
                
            }

            public func duplicate() -> PaymentModeList {
                let dict = self.dictionary!
                let copy = PaymentModeList(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    retryCount = try container.decode(Int.self, forKey: .retryCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fyndVpa = try container.decode(String.self, forKey: .fyndVpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expired = try container.decode(Bool.self, forKey: .expired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardName = try container.decode(String.self, forKey: .cardName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardId = try container.decode(String.self, forKey: .cardId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expYear = try container.decode(Int.self, forKey: .expYear)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    intentApp = try container.decode([IntentApp].self, forKey: .intentApp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardBrand = try container.decode(String.self, forKey: .cardBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
                
                do {
                    cardIssuer = try container.decode(String.self, forKey: .cardIssuer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardType = try container.decode(String.self, forKey: .cardType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    intentFlow = try container.decode(Bool.self, forKey: .intentFlow)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardToken = try container.decode(String.self, forKey: .cardToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardIsin = try container.decode(String.self, forKey: .cardIsin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    nickname = try container.decode(String.self, forKey: .nickname)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardReference = try container.decode(String.self, forKey: .cardReference)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    intentAppErrorDictList = try container.decode([IntentAppErrorList].self, forKey: .intentAppErrorDictList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(retryCount, forKey: .retryCount)
                
                
                
                
                try? container.encode(fyndVpa, forKey: .fyndVpa)
                
                
                
                
                try? container.encode(displayPriority, forKey: .displayPriority)
                
                
                
                
                try? container.encode(expired, forKey: .expired)
                
                
                
                
                try? container.encode(merchantCode, forKey: .merchantCode)
                
                
                
                
                try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)
                
                
                
                
                try? container.encode(name, forKey: .name)
                
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
                
                
                try? container.encode(cardBrandImage, forKey: .cardBrandImage)
                
                
                
                
                try? container.encode(cardName, forKey: .cardName)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
                
                
                try? container.encode(expYear, forKey: .expYear)
                
                
                
                
                try? container.encode(intentApp, forKey: .intentApp)
                
                
                
                
                try? container.encode(cardBrand, forKey: .cardBrand)
                
                
                
                
                try? container.encode(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encode(cardIssuer, forKey: .cardIssuer)
                
                
                
                
                try? container.encode(cardType, forKey: .cardType)
                
                
                
                
                try? container.encode(intentFlow, forKey: .intentFlow)
                
                
                
                
                try? container.encode(cardNumber, forKey: .cardNumber)
                
                
                
                
                try? container.encode(code, forKey: .code)
                
                
                
                
                try? container.encode(cardToken, forKey: .cardToken)
                
                
                
                
                try? container.encode(cardIsin, forKey: .cardIsin)
                
                
                
                
                try? container.encode(nickname, forKey: .nickname)
                
                
                
                
                try? container.encode(logoUrl, forKey: .logoUrl)
                
                
                
                
                try? container.encode(cardFingerprint, forKey: .cardFingerprint)
                
                
                
                
                try? container.encode(expMonth, forKey: .expMonth)
                
                
                
                
                try? container.encode(cardReference, forKey: .cardReference)
                
                
                
                
                try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)
                
                
            }
            
        }
        
        /*
            Model: RootPaymentMode
            Used By: Payment
        */
        class RootPaymentMode: Codable {
            
            public var list: [PaymentModeList]?
            
            public var logoUrl: PaymentModeLogo?
            
            public var displayName: String
            
            public var displayPriority: Int
            
            public var addCardEnabled: Bool?
            
            public var anonymousEnable: Bool?
            
            public var logo: String?
            
            public var name: String
            
            public var aggregatorName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case list = "list"
                
                case logoUrl = "logo_url"
                
                case displayName = "display_name"
                
                case displayPriority = "display_priority"
                
                case addCardEnabled = "add_card_enabled"
                
                case anonymousEnable = "anonymous_enable"
                
                case logo = "logo"
                
                case name = "name"
                
                case aggregatorName = "aggregator_name"
                
            }

            public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, logo: String?, logoUrl: PaymentModeLogo?, name: String) {
                
                self.list = list
                
                self.logoUrl = logoUrl
                
                self.displayName = displayName
                
                self.displayPriority = displayPriority
                
                self.addCardEnabled = addCardEnabled
                
                self.anonymousEnable = anonymousEnable
                
                self.logo = logo
                
                self.name = name
                
                self.aggregatorName = aggregatorName
                
            }

            public func duplicate() -> RootPaymentMode {
                let dict = self.dictionary!
                let copy = RootPaymentMode(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    list = try container.decode([PaymentModeList].self, forKey: .list)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
                
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
                
                
                
                do {
                    addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
                do {
                    aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(list, forKey: .list)
                
                
                
                
                try? container.encode(logoUrl, forKey: .logoUrl)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
                
                
                
                try? container.encode(addCardEnabled, forKey: .addCardEnabled)
                
                
                
                
                try? container.encode(anonymousEnable, forKey: .anonymousEnable)
                
                
                
                
                try? container.encode(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encode(aggregatorName, forKey: .aggregatorName)
                
                
            }
            
        }
        
        /*
            Model: AggregatorRoute
            Used By: Payment
        */
        class AggregatorRoute: Codable {
            
            public var paymentFlow: String?
            
            public var data: [String: Any]?
            
            public var paymentFlowData: String?
            
            public var apiLink: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentFlow = "payment_flow"
                
                case data = "data"
                
                case paymentFlowData = "payment_flow_data"
                
                case apiLink = "api_link"
                
            }

            public init(apiLink: String?, data: [String: Any]?, paymentFlow: String?, paymentFlowData: String?) {
                
                self.paymentFlow = paymentFlow
                
                self.data = data
                
                self.paymentFlowData = paymentFlowData
                
                self.apiLink = apiLink
                
            }

            public func duplicate() -> AggregatorRoute {
                let dict = self.dictionary!
                let copy = AggregatorRoute(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    paymentFlow = try container.decode(String.self, forKey: .paymentFlow)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentFlowData = try container.decode(String.self, forKey: .paymentFlowData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    apiLink = try container.decode(String.self, forKey: .apiLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(paymentFlow, forKey: .paymentFlow)
                
                
                
                
                try? container.encode(data, forKey: .data)
                
                
                
                
                try? container.encode(paymentFlowData, forKey: .paymentFlowData)
                
                
                
                
                try? container.encode(apiLink, forKey: .apiLink)
                
                
            }
            
        }
        
        /*
            Model: PaymentFlow
            Used By: Payment
        */
        class PaymentFlow: Codable {
            
            public var bqrRazorpay: AggregatorRoute?
            
            public var fynd: AggregatorRoute?
            
            public var jiopay: AggregatorRoute?
            
            public var stripe: AggregatorRoute?
            
            public var epaylater: AggregatorRoute?
            
            public var simpl: AggregatorRoute?
            
            public var razorpay: AggregatorRoute?
            
            public var payubiz: AggregatorRoute?
            
            public var upiRazorpay: AggregatorRoute?
            
            public var mswipe: AggregatorRoute?
            
            public var ccavenue: AggregatorRoute?
            
            public var rupifi: AggregatorRoute?
            
            public var juspay: AggregatorRoute?
            

            public enum CodingKeys: String, CodingKey {
                
                case bqrRazorpay = "bqr_razorpay"
                
                case fynd = "fynd"
                
                case jiopay = "jiopay"
                
                case stripe = "stripe"
                
                case epaylater = "epaylater"
                
                case simpl = "simpl"
                
                case razorpay = "razorpay"
                
                case payubiz = "payubiz"
                
                case upiRazorpay = "upi_razorpay"
                
                case mswipe = "mswipe"
                
                case ccavenue = "ccavenue"
                
                case rupifi = "rupifi"
                
                case juspay = "juspay"
                
            }

            public init(bqrRazorpay: AggregatorRoute?, ccavenue: AggregatorRoute?, epaylater: AggregatorRoute?, fynd: AggregatorRoute?, jiopay: AggregatorRoute?, juspay: AggregatorRoute?, mswipe: AggregatorRoute?, payubiz: AggregatorRoute?, razorpay: AggregatorRoute?, rupifi: AggregatorRoute?, simpl: AggregatorRoute?, stripe: AggregatorRoute?, upiRazorpay: AggregatorRoute?) {
                
                self.bqrRazorpay = bqrRazorpay
                
                self.fynd = fynd
                
                self.jiopay = jiopay
                
                self.stripe = stripe
                
                self.epaylater = epaylater
                
                self.simpl = simpl
                
                self.razorpay = razorpay
                
                self.payubiz = payubiz
                
                self.upiRazorpay = upiRazorpay
                
                self.mswipe = mswipe
                
                self.ccavenue = ccavenue
                
                self.rupifi = rupifi
                
                self.juspay = juspay
                
            }

            public func duplicate() -> PaymentFlow {
                let dict = self.dictionary!
                let copy = PaymentFlow(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    bqrRazorpay = try container.decode(AggregatorRoute.self, forKey: .bqrRazorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fynd = try container.decode(AggregatorRoute.self, forKey: .fynd)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    jiopay = try container.decode(AggregatorRoute.self, forKey: .jiopay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    stripe = try container.decode(AggregatorRoute.self, forKey: .stripe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    epaylater = try container.decode(AggregatorRoute.self, forKey: .epaylater)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    simpl = try container.decode(AggregatorRoute.self, forKey: .simpl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    razorpay = try container.decode(AggregatorRoute.self, forKey: .razorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    payubiz = try container.decode(AggregatorRoute.self, forKey: .payubiz)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    upiRazorpay = try container.decode(AggregatorRoute.self, forKey: .upiRazorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mswipe = try container.decode(AggregatorRoute.self, forKey: .mswipe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    ccavenue = try container.decode(AggregatorRoute.self, forKey: .ccavenue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    rupifi = try container.decode(AggregatorRoute.self, forKey: .rupifi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    juspay = try container.decode(AggregatorRoute.self, forKey: .juspay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(bqrRazorpay, forKey: .bqrRazorpay)
                
                
                
                
                try? container.encode(fynd, forKey: .fynd)
                
                
                
                
                try? container.encode(jiopay, forKey: .jiopay)
                
                
                
                
                try? container.encode(stripe, forKey: .stripe)
                
                
                
                
                try? container.encode(epaylater, forKey: .epaylater)
                
                
                
                
                try? container.encode(simpl, forKey: .simpl)
                
                
                
                
                try? container.encode(razorpay, forKey: .razorpay)
                
                
                
                
                try? container.encode(payubiz, forKey: .payubiz)
                
                
                
                
                try? container.encode(upiRazorpay, forKey: .upiRazorpay)
                
                
                
                
                try? container.encode(mswipe, forKey: .mswipe)
                
                
                
                
                try? container.encode(ccavenue, forKey: .ccavenue)
                
                
                
                
                try? container.encode(rupifi, forKey: .rupifi)
                
                
                
                
                try? container.encode(juspay, forKey: .juspay)
                
                
            }
            
        }
        
        /*
            Model: PaymentOptionAndFlow
            Used By: Payment
        */
        class PaymentOptionAndFlow: Codable {
            
            public var paymentOption: [RootPaymentMode]
            
            public var paymentFlows: PaymentFlow
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentOption = "payment_option"
                
                case paymentFlows = "payment_flows"
                
            }

            public init(paymentFlows: PaymentFlow, paymentOption: [RootPaymentMode]) {
                
                self.paymentOption = paymentOption
                
                self.paymentFlows = paymentFlows
                
            }

            public func duplicate() -> PaymentOptionAndFlow {
                let dict = self.dictionary!
                let copy = PaymentOptionAndFlow(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                paymentOption = try container.decode([RootPaymentMode].self, forKey: .paymentOption)
                
                
                
                
                paymentFlows = try container.decode(PaymentFlow.self, forKey: .paymentFlows)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
                
                
                
                
                try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)
                
                
            }
            
        }
        
        /*
            Model: PaymentModeRouteResponse
            Used By: Payment
        */
        class PaymentModeRouteResponse: Codable {
            
            public var paymentOptions: PaymentOptionAndFlow
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentOptions = "payment_options"
                
                case success = "success"
                
            }

            public init(paymentOptions: PaymentOptionAndFlow, success: Bool) {
                
                self.paymentOptions = paymentOptions
                
                self.success = success
                
            }

            public func duplicate() -> PaymentModeRouteResponse {
                let dict = self.dictionary!
                let copy = PaymentModeRouteResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                paymentOptions = try container.decode(PaymentOptionAndFlow.self, forKey: .paymentOptions)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: RupifiBannerData
            Used By: Payment
        */
        class RupifiBannerData: Codable {
            
            public var status: String?
            
            public var kycUrl: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case status = "status"
                
                case kycUrl = "kyc_url"
                
            }

            public init(kycUrl: String?, status: String?) {
                
                self.status = status
                
                self.kycUrl = kycUrl
                
            }

            public func duplicate() -> RupifiBannerData {
                let dict = self.dictionary!
                let copy = RupifiBannerData(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    kycUrl = try container.decode(String.self, forKey: .kycUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(kycUrl, forKey: .kycUrl)
                
                
            }
            
        }
        
        /*
            Model: RupifiBannerResponse
            Used By: Payment
        */
        class RupifiBannerResponse: Codable {
            
            public var data: RupifiBannerData
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
                case success = "success"
                
            }

            public init(data: RupifiBannerData, success: Bool) {
                
                self.data = data
                
                self.success = success
                
            }

            public func duplicate() -> RupifiBannerResponse {
                let dict = self.dictionary!
                let copy = RupifiBannerResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                data = try container.decode(RupifiBannerData.self, forKey: .data)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: EpaylaterBannerData
            Used By: Payment
        */
        class EpaylaterBannerData: Codable {
            
            public var status: String?
            
            public var kycUrl: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case status = "status"
                
                case kycUrl = "kyc_url"
                
            }

            public init(kycUrl: String?, status: String?) {
                
                self.status = status
                
                self.kycUrl = kycUrl
                
            }

            public func duplicate() -> EpaylaterBannerData {
                let dict = self.dictionary!
                let copy = EpaylaterBannerData(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    kycUrl = try container.decode(String.self, forKey: .kycUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(kycUrl, forKey: .kycUrl)
                
                
            }
            
        }
        
        /*
            Model: EpaylaterBannerResponse
            Used By: Payment
        */
        class EpaylaterBannerResponse: Codable {
            
            public var data: EpaylaterBannerData
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
                case success = "success"
                
            }

            public init(data: EpaylaterBannerData, success: Bool) {
                
                self.data = data
                
                self.success = success
                
            }

            public func duplicate() -> EpaylaterBannerResponse {
                let dict = self.dictionary!
                let copy = EpaylaterBannerResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                data = try container.decode(EpaylaterBannerData.self, forKey: .data)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: ResendOrCancelPaymentRequest
            Used By: Payment
        */
        class ResendOrCancelPaymentRequest: Codable {
            
            public var orderId: String
            
            public var requestType: String
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case requestType = "request_type"
                
            }

            public init(orderId: String, requestType: String) {
                
                self.orderId = orderId
                
                self.requestType = requestType
                
            }

            public func duplicate() -> ResendOrCancelPaymentRequest {
                let dict = self.dictionary!
                let copy = ResendOrCancelPaymentRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                requestType = try container.decode(String.self, forKey: .requestType)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(requestType, forKey: .requestType)
                
                
            }
            
        }
        
        /*
            Model: LinkStatus
            Used By: Payment
        */
        class LinkStatus: Codable {
            
            public var message: String
            
            public var status: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case status = "status"
                
            }

            public init(message: String, status: Bool) {
                
                self.message = message
                
                self.status = status
                
            }

            public func duplicate() -> LinkStatus {
                let dict = self.dictionary!
                let copy = LinkStatus(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                status = try container.decode(Bool.self, forKey: .status)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
            }
            
        }
        
        /*
            Model: ResendOrCancelPaymentResponse
            Used By: Payment
        */
        class ResendOrCancelPaymentResponse: Codable {
            
            public var data: LinkStatus
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
                case success = "success"
                
            }

            public init(data: LinkStatus, success: Bool) {
                
                self.data = data
                
                self.success = success
                
            }

            public func duplicate() -> ResendOrCancelPaymentResponse {
                let dict = self.dictionary!
                let copy = ResendOrCancelPaymentResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                data = try container.decode(LinkStatus.self, forKey: .data)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: TransferItemsDetails
            Used By: Payment
        */
        class TransferItemsDetails: Codable {
            
            public var logoSmall: String
            
            public var displayName: String?
            
            public var id: Int
            
            public var logoLarge: String
            
            public var name: String
            

            public enum CodingKeys: String, CodingKey {
                
                case logoSmall = "logo_small"
                
                case displayName = "display_name"
                
                case id = "id"
                
                case logoLarge = "logo_large"
                
                case name = "name"
                
            }

            public init(displayName: String?, id: Int, logoLarge: String, logoSmall: String, name: String) {
                
                self.logoSmall = logoSmall
                
                self.displayName = displayName
                
                self.id = id
                
                self.logoLarge = logoLarge
                
                self.name = name
                
            }

            public func duplicate() -> TransferItemsDetails {
                let dict = self.dictionary!
                let copy = TransferItemsDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                logoSmall = try container.decode(String.self, forKey: .logoSmall)
                
                
                
                
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                id = try container.decode(Int.self, forKey: .id)
                
                
                
                
                logoLarge = try container.decode(String.self, forKey: .logoLarge)
                
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
            }
            
        }
        
        /*
            Model: TransferModeDetails
            Used By: Payment
        */
        class TransferModeDetails: Codable {
            
            public var displayName: String
            
            public var items: [TransferItemsDetails]?
            

            public enum CodingKeys: String, CodingKey {
                
                case displayName = "display_name"
                
                case items = "items"
                
            }

            public init(displayName: String, items: [TransferItemsDetails]?) {
                
                self.displayName = displayName
                
                self.items = items
                
            }

            public func duplicate() -> TransferModeDetails {
                let dict = self.dictionary!
                let copy = TransferModeDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
                
                do {
                    items = try container.decode([TransferItemsDetails].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
        /*
            Model: TransferModeResponse
            Used By: Payment
        */
        class TransferModeResponse: Codable {
            
            public var data: [TransferModeDetails]
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
            }

            public init(data: [TransferModeDetails]) {
                
                self.data = data
                
            }

            public func duplicate() -> TransferModeResponse {
                let dict = self.dictionary!
                let copy = TransferModeResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                data = try container.decode([TransferModeDetails].self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: UpdateRefundTransferModeRequest
            Used By: Payment
        */
        class UpdateRefundTransferModeRequest: Codable {
            
            public var enable: Bool
            
            public var transferMode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case enable = "enable"
                
                case transferMode = "transfer_mode"
                
            }

            public init(enable: Bool, transferMode: String) {
                
                self.enable = enable
                
                self.transferMode = transferMode
                
            }

            public func duplicate() -> UpdateRefundTransferModeRequest {
                let dict = self.dictionary!
                let copy = UpdateRefundTransferModeRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                enable = try container.decode(Bool.self, forKey: .enable)
                
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(enable, forKey: .enable)
                
                
                
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                
            }
            
        }
        
        /*
            Model: UpdateRefundTransferModeResponse
            Used By: Payment
        */
        class UpdateRefundTransferModeResponse: Codable {
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
            }

            public init(success: Bool?) {
                
                self.success = success
                
            }

            public func duplicate() -> UpdateRefundTransferModeResponse {
                let dict = self.dictionary!
                let copy = UpdateRefundTransferModeResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: OrderBeneficiaryDetails
            Used By: Payment
        */
        class OrderBeneficiaryDetails: Codable {
            
            public var title: String
            
            public var modifiedOn: String
            
            public var ifscCode: String
            
            public var isActive: Bool
            
            public var displayName: String
            
            public var accountNo: String
            
            public var subtitle: String
            
            public var beneficiaryId: String
            
            public var id: Int
            
            public var createdOn: String
            
            public var delightsUserName: String?
            
            public var branchName: Bool?
            
            public var accountHolder: String
            
            public var email: String
            
            public var mobile: Bool?
            
            public var address: String
            
            public var comment: Bool?
            
            public var transferMode: String
            
            public var bankName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case modifiedOn = "modified_on"
                
                case ifscCode = "ifsc_code"
                
                case isActive = "is_active"
                
                case displayName = "display_name"
                
                case accountNo = "account_no"
                
                case subtitle = "subtitle"
                
                case beneficiaryId = "beneficiary_id"
                
                case id = "id"
                
                case createdOn = "created_on"
                
                case delightsUserName = "delights_user_name"
                
                case branchName = "branch_name"
                
                case accountHolder = "account_holder"
                
                case email = "email"
                
                case mobile = "mobile"
                
                case address = "address"
                
                case comment = "comment"
                
                case transferMode = "transfer_mode"
                
                case bankName = "bank_name"
                
            }

            public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String?, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
                
                self.title = title
                
                self.modifiedOn = modifiedOn
                
                self.ifscCode = ifscCode
                
                self.isActive = isActive
                
                self.displayName = displayName
                
                self.accountNo = accountNo
                
                self.subtitle = subtitle
                
                self.beneficiaryId = beneficiaryId
                
                self.id = id
                
                self.createdOn = createdOn
                
                self.delightsUserName = delightsUserName
                
                self.branchName = branchName
                
                self.accountHolder = accountHolder
                
                self.email = email
                
                self.mobile = mobile
                
                self.address = address
                
                self.comment = comment
                
                self.transferMode = transferMode
                
                self.bankName = bankName
                
            }

            public func duplicate() -> OrderBeneficiaryDetails {
                let dict = self.dictionary!
                let copy = OrderBeneficiaryDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                title = try container.decode(String.self, forKey: .title)
                
                
                
                
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
                
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
                
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
                
                
                
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
                
                
                
                id = try container.decode(Int.self, forKey: .id)
                
                
                
                
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
                
                
                
                do {
                    delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    branchName = try container.decode(Bool.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                do {
                    mobile = try container.decode(Bool.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                address = try container.decode(String.self, forKey: .address)
                
                
                
                
                do {
                    comment = try container.decode(Bool.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
                
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
                
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                
                
                
                try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                
                
                
                try? container.encode(delightsUserName, forKey: .delightsUserName)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
            }
            
        }
        
        /*
            Model: OrderBeneficiaryResponse
            Used By: Payment
        */
        class OrderBeneficiaryResponse: Codable {
            
            public var beneficiaries: [OrderBeneficiaryDetails]?
            
            public var showBeneficiaryDetails: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case beneficiaries = "beneficiaries"
                
                case showBeneficiaryDetails = "show_beneficiary_details"
                
            }

            public init(beneficiaries: [OrderBeneficiaryDetails]?, showBeneficiaryDetails: Bool?) {
                
                self.beneficiaries = beneficiaries
                
                self.showBeneficiaryDetails = showBeneficiaryDetails
                
            }

            public func duplicate() -> OrderBeneficiaryResponse {
                let dict = self.dictionary!
                let copy = OrderBeneficiaryResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    beneficiaries = try container.decode([OrderBeneficiaryDetails].self, forKey: .beneficiaries)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    showBeneficiaryDetails = try container.decode(Bool.self, forKey: .showBeneficiaryDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(beneficiaries, forKey: .beneficiaries)
                
                
                
                
                try? container.encodeIfPresent(showBeneficiaryDetails, forKey: .showBeneficiaryDetails)
                
                
            }
            
        }
        
        /*
            Model: NotFoundResourceError
            Used By: Payment
        */
        class NotFoundResourceError: Codable {
            
            public var code: String
            
            public var description: String
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case description = "description"
                
                case success = "success"
                
            }

            public init(code: String, description: String, success: Bool) {
                
                self.code = code
                
                self.description = description
                
                self.success = success
                
            }

            public func duplicate() -> NotFoundResourceError {
                let dict = self.dictionary!
                let copy = NotFoundResourceError(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                code = try container.decode(String.self, forKey: .code)
                
                
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: IfscCodeResponse
            Used By: Payment
        */
        class IfscCodeResponse: Codable {
            
            public var branchName: String
            
            public var success: Bool?
            
            public var bankName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case branchName = "branch_name"
                
                case success = "success"
                
                case bankName = "bank_name"
                
            }

            public init(bankName: String, branchName: String, success: Bool?) {
                
                self.branchName = branchName
                
                self.success = success
                
                self.bankName = bankName
                
            }

            public func duplicate() -> IfscCodeResponse {
                let dict = self.dictionary!
                let copy = IfscCodeResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
            }
            
        }
        
        /*
            Model: ErrorCodeDescription
            Used By: Payment
        */
        class ErrorCodeDescription: Codable {
            
            public var code: String
            
            public var description: String
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case description = "description"
                
                case success = "success"
                
            }

            public init(code: String, description: String, success: Bool) {
                
                self.code = code
                
                self.description = description
                
                self.success = success
                
            }

            public func duplicate() -> ErrorCodeDescription {
                let dict = self.dictionary!
                let copy = ErrorCodeDescription(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                code = try container.decode(String.self, forKey: .code)
                
                
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryViaOtpVerificationRequest
            Used By: Payment
        */
        class AddBeneficiaryViaOtpVerificationRequest: Codable {
            
            public var requestId: String
            
            public var otp: String
            
            public var hashKey: String
            

            public enum CodingKeys: String, CodingKey {
                
                case requestId = "request_id"
                
                case otp = "otp"
                
                case hashKey = "hash_key"
                
            }

            public init(hashKey: String, otp: String, requestId: String) {
                
                self.requestId = requestId
                
                self.otp = otp
                
                self.hashKey = hashKey
                
            }

            public func duplicate() -> AddBeneficiaryViaOtpVerificationRequest {
                let dict = self.dictionary!
                let copy = AddBeneficiaryViaOtpVerificationRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                requestId = try container.decode(String.self, forKey: .requestId)
                
                
                
                
                otp = try container.decode(String.self, forKey: .otp)
                
                
                
                
                hashKey = try container.decode(String.self, forKey: .hashKey)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
                
                
                try? container.encodeIfPresent(otp, forKey: .otp)
                
                
                
                
                try? container.encodeIfPresent(hashKey, forKey: .hashKey)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryViaOtpVerificationResponse
            Used By: Payment
        */
        class AddBeneficiaryViaOtpVerificationResponse: Codable {
            
            public var message: String
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
            }

            public init(message: String, success: Bool?) {
                
                self.message = message
                
                self.success = success
                
            }

            public func duplicate() -> AddBeneficiaryViaOtpVerificationResponse {
                let dict = self.dictionary!
                let copy = AddBeneficiaryViaOtpVerificationResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: WrongOtpError
            Used By: Payment
        */
        class WrongOtpError: Codable {
            
            public var isVerifiedFlag: Bool
            
            public var description: String
            
            public var success: String
            

            public enum CodingKeys: String, CodingKey {
                
                case isVerifiedFlag = "is_verified_flag"
                
                case description = "description"
                
                case success = "success"
                
            }

            public init(description: String, isVerifiedFlag: Bool, success: String) {
                
                self.isVerifiedFlag = isVerifiedFlag
                
                self.description = description
                
                self.success = success
                
            }

            public func duplicate() -> WrongOtpError {
                let dict = self.dictionary!
                let copy = WrongOtpError(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
                
                
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
                
                success = try container.decode(String.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: BeneficiaryModeDetails
            Used By: Payment
        */
        class BeneficiaryModeDetails: Codable {
            
            public var ifscCode: String
            
            public var mobile: String
            
            public var vpa: String?
            
            public var address: String?
            
            public var branchName: String
            
            public var accountHolder: String
            
            public var comment: String?
            
            public var email: String
            
            public var accountNo: String
            
            public var bankName: String
            
            public var wallet: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case ifscCode = "ifsc_code"
                
                case mobile = "mobile"
                
                case vpa = "vpa"
                
                case address = "address"
                
                case branchName = "branch_name"
                
                case accountHolder = "account_holder"
                
                case comment = "comment"
                
                case email = "email"
                
                case accountNo = "account_no"
                
                case bankName = "bank_name"
                
                case wallet = "wallet"
                
            }

            public init(accountHolder: String, accountNo: String, address: String?, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String, vpa: String?, wallet: String?) {
                
                self.ifscCode = ifscCode
                
                self.mobile = mobile
                
                self.vpa = vpa
                
                self.address = address
                
                self.branchName = branchName
                
                self.accountHolder = accountHolder
                
                self.comment = comment
                
                self.email = email
                
                self.accountNo = accountNo
                
                self.bankName = bankName
                
                self.wallet = wallet
                
            }

            public func duplicate() -> BeneficiaryModeDetails {
                let dict = self.dictionary!
                let copy = BeneficiaryModeDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                mobile = try container.decode(String.self, forKey: .mobile)
                
                
                
                
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
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
                
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                do {
                    wallet = try container.decode(String.self, forKey: .wallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
                
                
                try? container.encode(wallet, forKey: .wallet)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryDetailsRequest
            Used By: Payment
        */
        class AddBeneficiaryDetailsRequest: Codable {
            
            public var requestId: String?
            
            public var details: BeneficiaryModeDetails
            
            public var delights: Bool
            
            public var shipmentId: String
            
            public var orderId: String
            
            public var transferMode: String
            
            public var otp: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case requestId = "request_id"
                
                case details = "details"
                
                case delights = "delights"
                
                case shipmentId = "shipment_id"
                
                case orderId = "order_id"
                
                case transferMode = "transfer_mode"
                
                case otp = "otp"
                
            }

            public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String?, requestId: String?, shipmentId: String, transferMode: String) {
                
                self.requestId = requestId
                
                self.details = details
                
                self.delights = delights
                
                self.shipmentId = shipmentId
                
                self.orderId = orderId
                
                self.transferMode = transferMode
                
                self.otp = otp
                
            }

            public func duplicate() -> AddBeneficiaryDetailsRequest {
                let dict = self.dictionary!
                let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)
                
                
                
                
                delights = try container.decode(Bool.self, forKey: .delights)
                
                
                
                
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
                
                do {
                    otp = try container.decode(String.self, forKey: .otp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
                
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                
                
                
                try? container.encodeIfPresent(delights, forKey: .delights)
                
                
                
                
                try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                
                
                
                try? container.encodeIfPresent(otp, forKey: .otp)
                
                
            }
            
        }
        
        /*
            Model: RefundAccountResponse
            Used By: Payment
        */
        class RefundAccountResponse: Codable {
            
            public var isVerifiedFlag: Bool?
            
            public var message: String
            
            public var data: [String: Any]?
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case isVerifiedFlag = "is_verified_flag"
                
                case message = "message"
                
                case data = "data"
                
                case success = "success"
                
            }

            public init(data: [String: Any]?, isVerifiedFlag: Bool?, message: String, success: Bool) {
                
                self.isVerifiedFlag = isVerifiedFlag
                
                self.message = message
                
                self.data = data
                
                self.success = success
                
            }

            public func duplicate() -> RefundAccountResponse {
                let dict = self.dictionary!
                let copy = RefundAccountResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: BankDetailsForOTP
            Used By: Payment
        */
        class BankDetailsForOTP: Codable {
            
            public var ifscCode: String
            
            public var branchName: String
            
            public var accountHolder: String
            
            public var accountNo: String
            
            public var bankName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case ifscCode = "ifsc_code"
                
                case branchName = "branch_name"
                
                case accountHolder = "account_holder"
                
                case accountNo = "account_no"
                
                case bankName = "bank_name"
                
            }

            public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
                
                self.ifscCode = ifscCode
                
                self.branchName = branchName
                
                self.accountHolder = accountHolder
                
                self.accountNo = accountNo
                
                self.bankName = bankName
                
            }

            public func duplicate() -> BankDetailsForOTP {
                let dict = self.dictionary!
                let copy = BankDetailsForOTP(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryDetailsOTPRequest
            Used By: Payment
        */
        class AddBeneficiaryDetailsOTPRequest: Codable {
            
            public var orderId: String
            
            public var details: BankDetailsForOTP
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case details = "details"
                
            }

            public init(details: BankDetailsForOTP, orderId: String) {
                
                self.orderId = orderId
                
                self.details = details
                
            }

            public func duplicate() -> AddBeneficiaryDetailsOTPRequest {
                let dict = self.dictionary!
                let copy = AddBeneficiaryDetailsOTPRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                details = try container.decode(BankDetailsForOTP.self, forKey: .details)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                
            }
            
        }
        
        /*
            Model: WalletOtpRequest
            Used By: Payment
        */
        class WalletOtpRequest: Codable {
            
            public var countryCode: String
            
            public var mobile: String
            

            public enum CodingKeys: String, CodingKey {
                
                case countryCode = "country_code"
                
                case mobile = "mobile"
                
            }

            public init(countryCode: String, mobile: String) {
                
                self.countryCode = countryCode
                
                self.mobile = mobile
                
            }

            public func duplicate() -> WalletOtpRequest {
                let dict = self.dictionary!
                let copy = WalletOtpRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
                
                
                
                mobile = try container.decode(String.self, forKey: .mobile)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
            }
            
        }
        
        /*
            Model: WalletOtpResponse
            Used By: Payment
        */
        class WalletOtpResponse: Codable {
            
            public var isVerifiedFlag: String
            
            public var requestId: String
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case isVerifiedFlag = "is_verified_flag"
                
                case requestId = "request_id"
                
                case success = "success"
                
            }

            public init(isVerifiedFlag: String, requestId: String, success: Bool?) {
                
                self.isVerifiedFlag = isVerifiedFlag
                
                self.requestId = requestId
                
                self.success = success
                
            }

            public func duplicate() -> WalletOtpResponse {
                let dict = self.dictionary!
                let copy = WalletOtpResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)
                
                
                
                
                requestId = try container.decode(String.self, forKey: .requestId)
                
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: SetDefaultBeneficiaryRequest
            Used By: Payment
        */
        class SetDefaultBeneficiaryRequest: Codable {
            
            public var orderId: String
            
            public var beneficiaryId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case beneficiaryId = "beneficiary_id"
                
            }

            public init(beneficiaryId: String, orderId: String) {
                
                self.orderId = orderId
                
                self.beneficiaryId = beneficiaryId
                
            }

            public func duplicate() -> SetDefaultBeneficiaryRequest {
                let dict = self.dictionary!
                let copy = SetDefaultBeneficiaryRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
                
                
            }
            
        }
        
        /*
            Model: SetDefaultBeneficiaryResponse
            Used By: Payment
        */
        class SetDefaultBeneficiaryResponse: Codable {
            
            public var isBeneficiarySet: Bool
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case isBeneficiarySet = "is_beneficiary_set"
                
                case success = "success"
                
            }

            public init(isBeneficiarySet: Bool, success: Bool?) {
                
                self.isBeneficiarySet = isBeneficiarySet
                
                self.success = success
                
            }

            public func duplicate() -> SetDefaultBeneficiaryResponse {
                let dict = self.dictionary!
                let copy = SetDefaultBeneficiaryResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                isBeneficiarySet = try container.decode(Bool.self, forKey: .isBeneficiarySet)
                
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isBeneficiarySet, forKey: .isBeneficiarySet)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: BalanceDetails
            Used By: Payment
        */
        class BalanceDetails: Codable {
            
            public var currency: String
            
            public var value: Double
            
            public var formattedValue: String
            

            public enum CodingKeys: String, CodingKey {
                
                case currency = "currency"
                
                case value = "value"
                
                case formattedValue = "formatted_value"
                
            }

            public init(currency: String, formattedValue: String, value: Double) {
                
                self.currency = currency
                
                self.value = value
                
                self.formattedValue = formattedValue
                
            }

            public func duplicate() -> BalanceDetails {
                let dict = self.dictionary!
                let copy = BalanceDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
                
                value = try container.decode(Double.self, forKey: .value)
                
                
                
                
                formattedValue = try container.decode(String.self, forKey: .formattedValue)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
                
                
                try? container.encodeIfPresent(formattedValue, forKey: .formattedValue)
                
                
            }
            
        }
        
        /*
            Model: CreditSummary
            Used By: Payment
        */
        class CreditSummary: Codable {
            
            public var merchantCustomerRefId: String
            
            public var statusMessage: String
            
            public var status: String
            
            public var balance: BalanceDetails?
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantCustomerRefId = "merchant_customer_ref_id"
                
                case statusMessage = "status_message"
                
                case status = "status"
                
                case balance = "balance"
                
            }

            public init(balance: BalanceDetails?, merchantCustomerRefId: String, status: String, statusMessage: String) {
                
                self.merchantCustomerRefId = merchantCustomerRefId
                
                self.statusMessage = statusMessage
                
                self.status = status
                
                self.balance = balance
                
            }

            public func duplicate() -> CreditSummary {
                let dict = self.dictionary!
                let copy = CreditSummary(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                merchantCustomerRefId = try container.decode(String.self, forKey: .merchantCustomerRefId)
                
                
                
                
                statusMessage = try container.decode(String.self, forKey: .statusMessage)
                
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                do {
                    balance = try container.decode(BalanceDetails.self, forKey: .balance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(merchantCustomerRefId, forKey: .merchantCustomerRefId)
                
                
                
                
                try? container.encodeIfPresent(statusMessage, forKey: .statusMessage)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(balance, forKey: .balance)
                
                
            }
            
        }
        
        /*
            Model: CustomerCreditSummaryResponse
            Used By: Payment
        */
        class CustomerCreditSummaryResponse: Codable {
            
            public var data: CreditSummary?
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
                case success = "success"
                
            }

            public init(data: CreditSummary?, success: Bool) {
                
                self.data = data
                
                self.success = success
                
            }

            public func duplicate() -> CustomerCreditSummaryResponse {
                let dict = self.dictionary!
                let copy = CustomerCreditSummaryResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    data = try container.decode(CreditSummary.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: RedirectURL
            Used By: Payment
        */
        class RedirectURL: Codable {
            
            public var signupUrl: String
            
            public var status: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case signupUrl = "signup_url"
                
                case status = "status"
                
            }

            public init(signupUrl: String, status: Bool) {
                
                self.signupUrl = signupUrl
                
                self.status = status
                
            }

            public func duplicate() -> RedirectURL {
                let dict = self.dictionary!
                let copy = RedirectURL(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                signupUrl = try container.decode(String.self, forKey: .signupUrl)
                
                
                
                
                status = try container.decode(Bool.self, forKey: .status)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
            }
            
        }
        
        /*
            Model: RedirectToAggregatorResponse
            Used By: Payment
        */
        class RedirectToAggregatorResponse: Codable {
            
            public var data: RedirectURL
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
                case success = "success"
                
            }

            public init(data: RedirectURL, success: Bool) {
                
                self.data = data
                
                self.success = success
                
            }

            public func duplicate() -> RedirectToAggregatorResponse {
                let dict = self.dictionary!
                let copy = RedirectToAggregatorResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                data = try container.decode(RedirectURL.self, forKey: .data)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: CreditDetail
            Used By: Payment
        */
        class CreditDetail: Codable {
            
            public var isRegistered: Bool
            
            public var status: Bool
            
            public var signupUrl: String
            

            public enum CodingKeys: String, CodingKey {
                
                case isRegistered = "is_registered"
                
                case status = "status"
                
                case signupUrl = "signup_url"
                
            }

            public init(isRegistered: Bool, signupUrl: String, status: Bool) {
                
                self.isRegistered = isRegistered
                
                self.status = status
                
                self.signupUrl = signupUrl
                
            }

            public func duplicate() -> CreditDetail {
                let dict = self.dictionary!
                let copy = CreditDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                isRegistered = try container.decode(Bool.self, forKey: .isRegistered)
                
                
                
                
                status = try container.decode(Bool.self, forKey: .status)
                
                
                
                
                signupUrl = try container.decode(String.self, forKey: .signupUrl)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isRegistered, forKey: .isRegistered)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)
                
                
            }
            
        }
        
        /*
            Model: CheckCreditResponse
            Used By: Payment
        */
        class CheckCreditResponse: Codable {
            
            public var data: CreditDetail
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
                case success = "success"
                
            }

            public init(data: CreditDetail, success: Bool) {
                
                self.data = data
                
                self.success = success
                
            }

            public func duplicate() -> CheckCreditResponse {
                let dict = self.dictionary!
                let copy = CheckCreditResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                data = try container.decode(CreditDetail.self, forKey: .data)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: MarketplaceInfo
            Used By: Payment
        */
        class MarketplaceInfo: Codable {
            
            public var membershipId: String
            
            public var name: String
            
            public var dateOfJoining: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case membershipId = "membership_id"
                
                case name = "name"
                
                case dateOfJoining = "date_of_joining"
                
            }

            public init(dateOfJoining: String?, membershipId: String, name: String) {
                
                self.membershipId = membershipId
                
                self.name = name
                
                self.dateOfJoining = dateOfJoining
                
            }

            public func duplicate() -> MarketplaceInfo {
                let dict = self.dictionary!
                let copy = MarketplaceInfo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                membershipId = try container.decode(String.self, forKey: .membershipId)
                
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
                do {
                    dateOfJoining = try container.decode(String.self, forKey: .dateOfJoining)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(membershipId, forKey: .membershipId)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encode(dateOfJoining, forKey: .dateOfJoining)
                
                
            }
            
        }
        
        /*
            Model: DeviceDetails
            Used By: Payment
        */
        class DeviceDetails: Codable {
            
            public var osVersion: String?
            
            public var identificationNumber: String?
            
            public var os: String?
            
            public var identifierType: String?
            
            public var deviceMake: String?
            
            public var deviceModel: String?
            
            public var deviceType: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case osVersion = "os_version"
                
                case identificationNumber = "identification_number"
                
                case os = "os"
                
                case identifierType = "identifier_type"
                
                case deviceMake = "device_make"
                
                case deviceModel = "device_model"
                
                case deviceType = "device_type"
                
            }

            public init(deviceMake: String?, deviceModel: String?, deviceType: String?, identificationNumber: String?, identifierType: String?, os: String?, osVersion: String?) {
                
                self.osVersion = osVersion
                
                self.identificationNumber = identificationNumber
                
                self.os = os
                
                self.identifierType = identifierType
                
                self.deviceMake = deviceMake
                
                self.deviceModel = deviceModel
                
                self.deviceType = deviceType
                
            }

            public func duplicate() -> DeviceDetails {
                let dict = self.dictionary!
                let copy = DeviceDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    osVersion = try container.decode(String.self, forKey: .osVersion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    identificationNumber = try container.decode(String.self, forKey: .identificationNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    os = try container.decode(String.self, forKey: .os)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    identifierType = try container.decode(String.self, forKey: .identifierType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deviceMake = try container.decode(String.self, forKey: .deviceMake)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deviceModel = try container.decode(String.self, forKey: .deviceModel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deviceType = try container.decode(String.self, forKey: .deviceType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(osVersion, forKey: .osVersion)
                
                
                
                
                try? container.encode(identificationNumber, forKey: .identificationNumber)
                
                
                
                
                try? container.encode(os, forKey: .os)
                
                
                
                
                try? container.encode(identifierType, forKey: .identifierType)
                
                
                
                
                try? container.encode(deviceMake, forKey: .deviceMake)
                
                
                
                
                try? container.encode(deviceModel, forKey: .deviceModel)
                
                
                
                
                try? container.encode(deviceType, forKey: .deviceType)
                
                
            }
            
        }
        
        /*
            Model: KYCAddress
            Used By: Payment
        */
        class KYCAddress: Codable {
            
            public var addressline1: String
            
            public var landMark: String?
            
            public var pincode: String
            
            public var ownershipType: String?
            
            public var addressline2: String?
            
            public var state: String
            
            public var city: String
            

            public enum CodingKeys: String, CodingKey {
                
                case addressline1 = "addressline1"
                
                case landMark = "land_mark"
                
                case pincode = "pincode"
                
                case ownershipType = "ownership_type"
                
                case addressline2 = "addressline2"
                
                case state = "state"
                
                case city = "city"
                
            }

            public init(addressline1: String, addressline2: String?, city: String, landMark: String?, ownershipType: String?, pincode: String, state: String) {
                
                self.addressline1 = addressline1
                
                self.landMark = landMark
                
                self.pincode = pincode
                
                self.ownershipType = ownershipType
                
                self.addressline2 = addressline2
                
                self.state = state
                
                self.city = city
                
            }

            public func duplicate() -> KYCAddress {
                let dict = self.dictionary!
                let copy = KYCAddress(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                addressline1 = try container.decode(String.self, forKey: .addressline1)
                
                
                
                
                do {
                    landMark = try container.decode(String.self, forKey: .landMark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                pincode = try container.decode(String.self, forKey: .pincode)
                
                
                
                
                do {
                    ownershipType = try container.decode(String.self, forKey: .ownershipType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressline2 = try container.decode(String.self, forKey: .addressline2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                state = try container.decode(String.self, forKey: .state)
                
                
                
                
                city = try container.decode(String.self, forKey: .city)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(addressline1, forKey: .addressline1)
                
                
                
                
                try? container.encode(landMark, forKey: .landMark)
                
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
                
                
                try? container.encode(ownershipType, forKey: .ownershipType)
                
                
                
                
                try? container.encode(addressline2, forKey: .addressline2)
                
                
                
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
            }
            
        }
        
        /*
            Model: BusinessDetails
            Used By: Payment
        */
        class BusinessDetails: Codable {
            
            public var vintage: String?
            
            public var shopAndEstablishment: [String: Any]?
            
            public var fda: String?
            
            public var pan: String?
            
            public var fssai: String?
            
            public var entityType: String?
            
            public var address: KYCAddress?
            
            public var businessType: String?
            
            public var businessOwnershipType: String?
            
            public var gstin: String?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case vintage = "vintage"
                
                case shopAndEstablishment = "shop_and_establishment"
                
                case fda = "fda"
                
                case pan = "pan"
                
                case fssai = "fssai"
                
                case entityType = "entity_type"
                
                case address = "address"
                
                case businessType = "business_type"
                
                case businessOwnershipType = "business_ownership_type"
                
                case gstin = "gstin"
                
                case name = "name"
                
            }

            public init(address: KYCAddress?, businessOwnershipType: String?, businessType: String?, entityType: String?, fda: String?, fssai: String?, gstin: String?, name: String?, pan: String?, shopAndEstablishment: [String: Any]?, vintage: String?) {
                
                self.vintage = vintage
                
                self.shopAndEstablishment = shopAndEstablishment
                
                self.fda = fda
                
                self.pan = pan
                
                self.fssai = fssai
                
                self.entityType = entityType
                
                self.address = address
                
                self.businessType = businessType
                
                self.businessOwnershipType = businessOwnershipType
                
                self.gstin = gstin
                
                self.name = name
                
            }

            public func duplicate() -> BusinessDetails {
                let dict = self.dictionary!
                let copy = BusinessDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    vintage = try container.decode(String.self, forKey: .vintage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shopAndEstablishment = try container.decode([String: Any].self, forKey: .shopAndEstablishment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fda = try container.decode(String.self, forKey: .fda)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pan = try container.decode(String.self, forKey: .pan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fssai = try container.decode(String.self, forKey: .fssai)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address = try container.decode(KYCAddress.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    businessType = try container.decode(String.self, forKey: .businessType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    businessOwnershipType = try container.decode(String.self, forKey: .businessOwnershipType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(vintage, forKey: .vintage)
                
                
                
                
                try? container.encodeIfPresent(shopAndEstablishment, forKey: .shopAndEstablishment)
                
                
                
                
                try? container.encode(fda, forKey: .fda)
                
                
                
                
                try? container.encode(pan, forKey: .pan)
                
                
                
                
                try? container.encode(fssai, forKey: .fssai)
                
                
                
                
                try? container.encode(entityType, forKey: .entityType)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encode(businessType, forKey: .businessType)
                
                
                
                
                try? container.encode(businessOwnershipType, forKey: .businessOwnershipType)
                
                
                
                
                try? container.encode(gstin, forKey: .gstin)
                
                
                
                
                try? container.encode(name, forKey: .name)
                
                
            }
            
        }
        
        /*
            Model: UserPersonalInfoInDetails
            Used By: Payment
        */
        class UserPersonalInfoInDetails: Codable {
            
            public var drivingLicense: String?
            
            public var pan: String?
            
            public var passport: String?
            
            public var dob: String
            
            public var fathersName: String?
            
            public var voterId: String?
            
            public var phone: String
            
            public var lastName: String?
            
            public var addressAsPerId: KYCAddress
            
            public var mothersName: String?
            
            public var firstName: String
            
            public var emailVerified: Bool
            
            public var gender: String?
            
            public var mobileVerified: Bool
            
            public var email: String
            
            public var middleName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case drivingLicense = "driving_license"
                
                case pan = "pan"
                
                case passport = "passport"
                
                case dob = "dob"
                
                case fathersName = "fathers_name"
                
                case voterId = "voter_id"
                
                case phone = "phone"
                
                case lastName = "last_name"
                
                case addressAsPerId = "address_as_per_id"
                
                case mothersName = "mothers_name"
                
                case firstName = "first_name"
                
                case emailVerified = "email_verified"
                
                case gender = "gender"
                
                case mobileVerified = "mobile_verified"
                
                case email = "email"
                
                case middleName = "middle_name"
                
            }

            public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String?, email: String, emailVerified: Bool, fathersName: String?, firstName: String, gender: String?, lastName: String?, middleName: String?, mobileVerified: Bool, mothersName: String?, pan: String?, passport: String?, phone: String, voterId: String?) {
                
                self.drivingLicense = drivingLicense
                
                self.pan = pan
                
                self.passport = passport
                
                self.dob = dob
                
                self.fathersName = fathersName
                
                self.voterId = voterId
                
                self.phone = phone
                
                self.lastName = lastName
                
                self.addressAsPerId = addressAsPerId
                
                self.mothersName = mothersName
                
                self.firstName = firstName
                
                self.emailVerified = emailVerified
                
                self.gender = gender
                
                self.mobileVerified = mobileVerified
                
                self.email = email
                
                self.middleName = middleName
                
            }

            public func duplicate() -> UserPersonalInfoInDetails {
                let dict = self.dictionary!
                let copy = UserPersonalInfoInDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    drivingLicense = try container.decode(String.self, forKey: .drivingLicense)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pan = try container.decode(String.self, forKey: .pan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    passport = try container.decode(String.self, forKey: .passport)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                dob = try container.decode(String.self, forKey: .dob)
                
                
                
                
                do {
                    fathersName = try container.decode(String.self, forKey: .fathersName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    voterId = try container.decode(String.self, forKey: .voterId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                phone = try container.decode(String.self, forKey: .phone)
                
                
                
                
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)
                
                
                
                
                do {
                    mothersName = try container.decode(String.self, forKey: .mothersName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                firstName = try container.decode(String.self, forKey: .firstName)
                
                
                
                
                emailVerified = try container.decode(Bool.self, forKey: .emailVerified)
                
                
                
                
                do {
                    gender = try container.decode(String.self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                do {
                    middleName = try container.decode(String.self, forKey: .middleName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(drivingLicense, forKey: .drivingLicense)
                
                
                
                
                try? container.encode(pan, forKey: .pan)
                
                
                
                
                try? container.encode(passport, forKey: .passport)
                
                
                
                
                try? container.encode(dob, forKey: .dob)
                
                
                
                
                try? container.encode(fathersName, forKey: .fathersName)
                
                
                
                
                try? container.encode(voterId, forKey: .voterId)
                
                
                
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                
                
                
                try? container.encode(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)
                
                
                
                
                try? container.encode(mothersName, forKey: .mothersName)
                
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
                
                
                try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)
                
                
                
                
                try? container.encode(gender, forKey: .gender)
                
                
                
                
                try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encode(middleName, forKey: .middleName)
                
                
            }
            
        }
        
        /*
            Model: CustomerOnboardingRequest
            Used By: Payment
        */
        class CustomerOnboardingRequest: Codable {
            
            public var source: String
            
            public var marketplaceInfo: MarketplaceInfo?
            
            public var device: DeviceDetails?
            
            public var businessInfo: BusinessDetails?
            
            public var personalInfo: UserPersonalInfoInDetails
            
            public var aggregator: String
            

            public enum CodingKeys: String, CodingKey {
                
                case source = "source"
                
                case marketplaceInfo = "marketplace_info"
                
                case device = "device"
                
                case businessInfo = "business_info"
                
                case personalInfo = "personal_info"
                
                case aggregator = "aggregator"
                
            }

            public init(aggregator: String, businessInfo: BusinessDetails?, device: DeviceDetails?, marketplaceInfo: MarketplaceInfo?, personalInfo: UserPersonalInfoInDetails, source: String) {
                
                self.source = source
                
                self.marketplaceInfo = marketplaceInfo
                
                self.device = device
                
                self.businessInfo = businessInfo
                
                self.personalInfo = personalInfo
                
                self.aggregator = aggregator
                
            }

            public func duplicate() -> CustomerOnboardingRequest {
                let dict = self.dictionary!
                let copy = CustomerOnboardingRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                source = try container.decode(String.self, forKey: .source)
                
                
                
                
                do {
                    marketplaceInfo = try container.decode(MarketplaceInfo.self, forKey: .marketplaceInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    device = try container.decode(DeviceDetails.self, forKey: .device)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    businessInfo = try container.decode(BusinessDetails.self, forKey: .businessInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                personalInfo = try container.decode(UserPersonalInfoInDetails.self, forKey: .personalInfo)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(source, forKey: .source)
                
                
                
                
                try? container.encodeIfPresent(marketplaceInfo, forKey: .marketplaceInfo)
                
                
                
                
                try? container.encodeIfPresent(device, forKey: .device)
                
                
                
                
                try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
                
                
                
                
                try? container.encodeIfPresent(personalInfo, forKey: .personalInfo)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
            }
            
        }
        
        /*
            Model: OnboardSummary
            Used By: Payment
        */
        class OnboardSummary: Codable {
            
            public var session: [String: Any]
            
            public var redirectUrl: String
            
            public var status: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case session = "session"
                
                case redirectUrl = "redirect_url"
                
                case status = "status"
                
            }

            public init(redirectUrl: String, session: [String: Any], status: Bool) {
                
                self.session = session
                
                self.redirectUrl = redirectUrl
                
                self.status = status
                
            }

            public func duplicate() -> OnboardSummary {
                let dict = self.dictionary!
                let copy = OnboardSummary(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                session = try container.decode([String: Any].self, forKey: .session)
                
                
                
                
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)
                
                
                
                
                status = try container.decode(Bool.self, forKey: .status)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(session, forKey: .session)
                
                
                
                
                try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
            }
            
        }
        
        /*
            Model: CustomerOnboardingResponse
            Used By: Payment
        */
        class CustomerOnboardingResponse: Codable {
            
            public var data: OnboardSummary
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
                case success = "success"
                
            }

            public init(data: OnboardSummary, success: Bool) {
                
                self.data = data
                
                self.success = success
                
            }

            public func duplicate() -> CustomerOnboardingResponse {
                let dict = self.dictionary!
                let copy = CustomerOnboardingResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                data = try container.decode(OnboardSummary.self, forKey: .data)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
}
