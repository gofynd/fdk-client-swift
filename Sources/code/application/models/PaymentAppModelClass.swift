import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: AggregatorConfigDetail
         Used By: Payment
     */
    class AggregatorConfigDetail: Codable {
        public var api: String?

        public var verifyApi: String?

        public var key: String

        public var userId: String?

        public var secret: String

        public var merchantKey: String?

        public var sdk: Bool?

        public var pin: String?

        public var merchantId: String?

        public var configType: String

        public enum CodingKeys: String, CodingKey {
            case api

            case verifyApi = "verify_api"

            case key

            case userId = "user_id"

            case secret

            case merchantKey = "merchant_key"

            case sdk

            case pin

            case merchantId = "merchant_id"

            case configType = "config_type"
        }

        public init(api: String? = nil, configType: String, key: String, merchantId: String? = nil, merchantKey: String? = nil, pin: String? = nil, sdk: Bool? = nil, secret: String, userId: String? = nil, verifyApi: String? = nil) {
            self.api = api

            self.verifyApi = verifyApi

            self.key = key

            self.userId = userId

            self.secret = secret

            self.merchantKey = merchantKey

            self.sdk = sdk

            self.pin = pin

            self.merchantId = merchantId

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
                api = try container.decode(String.self, forKey: .api)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifyApi = try container.decode(String.self, forKey: .verifyApi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            secret = try container.decode(String.self, forKey: .secret)

            do {
                merchantKey = try container.decode(String.self, forKey: .merchantKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sdk = try container.decode(Bool.self, forKey: .sdk)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pin = try container.decode(String.self, forKey: .pin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantId = try container.decode(String.self, forKey: .merchantId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(api, forKey: .api)

            try? container.encode(verifyApi, forKey: .verifyApi)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encode(userId, forKey: .userId)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encode(merchantKey, forKey: .merchantKey)

            try? container.encode(sdk, forKey: .sdk)

            try? container.encode(pin, forKey: .pin)

            try? container.encode(merchantId, forKey: .merchantId)

            try? container.encodeIfPresent(configType, forKey: .configType)
        }
    }

    /*
         Model: AggregatorsConfigDetailResponse
         Used By: Payment
     */
    class AggregatorsConfigDetailResponse: Codable {
        public var env: String

        public var ccavenue: AggregatorConfigDetail?

        public var stripe: AggregatorConfigDetail?

        public var rupifi: AggregatorConfigDetail?

        public var razorpay: AggregatorConfigDetail?

        public var payumoney: AggregatorConfigDetail?

        public var success: Bool

        public var juspay: AggregatorConfigDetail?

        public var mswipe: AggregatorConfigDetail?

        public var simpl: AggregatorConfigDetail?

        public enum CodingKeys: String, CodingKey {
            case env

            case ccavenue

            case stripe

            case rupifi

            case razorpay

            case payumoney

            case success

            case juspay

            case mswipe

            case simpl
        }

        public init(ccavenue: AggregatorConfigDetail? = nil, env: String, juspay: AggregatorConfigDetail? = nil, mswipe: AggregatorConfigDetail? = nil, payumoney: AggregatorConfigDetail? = nil, razorpay: AggregatorConfigDetail? = nil, rupifi: AggregatorConfigDetail? = nil, simpl: AggregatorConfigDetail? = nil, stripe: AggregatorConfigDetail? = nil, success: Bool) {
            self.env = env

            self.ccavenue = ccavenue

            self.stripe = stripe

            self.rupifi = rupifi

            self.razorpay = razorpay

            self.payumoney = payumoney

            self.success = success

            self.juspay = juspay

            self.mswipe = mswipe

            self.simpl = simpl
        }

        public func duplicate() -> AggregatorsConfigDetailResponse {
            let dict = self.dictionary!
            let copy = AggregatorsConfigDetailResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            env = try container.decode(String.self, forKey: .env)

            do {
                ccavenue = try container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stripe = try container.decode(AggregatorConfigDetail.self, forKey: .stripe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rupifi = try container.decode(AggregatorConfigDetail.self, forKey: .rupifi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                razorpay = try container.decode(AggregatorConfigDetail.self, forKey: .razorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payumoney = try container.decode(AggregatorConfigDetail.self, forKey: .payumoney)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                juspay = try container.decode(AggregatorConfigDetail.self, forKey: .juspay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mswipe = try container.decode(AggregatorConfigDetail.self, forKey: .mswipe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                simpl = try container.decode(AggregatorConfigDetail.self, forKey: .simpl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(env, forKey: .env)

            try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)

            try? container.encodeIfPresent(stripe, forKey: .stripe)

            try? container.encodeIfPresent(rupifi, forKey: .rupifi)

            try? container.encodeIfPresent(razorpay, forKey: .razorpay)

            try? container.encodeIfPresent(payumoney, forKey: .payumoney)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(juspay, forKey: .juspay)

            try? container.encodeIfPresent(mswipe, forKey: .mswipe)

            try? container.encodeIfPresent(simpl, forKey: .simpl)
        }
    }

    /*
         Model: ErrorCodeAndDescription
         Used By: Payment
     */
    class ErrorCodeAndDescription: Codable {
        public var description: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case description

            case code
        }

        public init(code: String, description: String) {
            self.description = description

            self.code = code
        }

        public func duplicate() -> ErrorCodeAndDescription {
            let dict = self.dictionary!
            let copy = ErrorCodeAndDescription(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            description = try container.decode(String.self, forKey: .description)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: HttpErrorCodeAndResponse
         Used By: Payment
     */
    class HttpErrorCodeAndResponse: Codable {
        public var success: Bool

        public var error: ErrorCodeAndDescription

        public enum CodingKeys: String, CodingKey {
            case success

            case error
        }

        public init(error: ErrorCodeAndDescription, success: Bool) {
            self.success = success

            self.error = error
        }

        public func duplicate() -> HttpErrorCodeAndResponse {
            let dict = self.dictionary!
            let copy = HttpErrorCodeAndResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            error = try container.decode(ErrorCodeAndDescription.self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }

    /*
         Model: AttachCardRequest
         Used By: Payment
     */
    class AttachCardRequest: Codable {
        public var nameOnCard: String?

        public var nickname: String?

        public var refresh: Bool?

        public var cardId: String

        public enum CodingKeys: String, CodingKey {
            case nameOnCard = "name_on_card"

            case nickname

            case refresh

            case cardId = "card_id"
        }

        public init(cardId: String, nameOnCard: String? = nil, nickname: String? = nil, refresh: Bool? = nil) {
            self.nameOnCard = nameOnCard

            self.nickname = nickname

            self.refresh = refresh

            self.cardId = cardId
        }

        public func duplicate() -> AttachCardRequest {
            let dict = self.dictionary!
            let copy = AttachCardRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refresh = try container.decode(Bool.self, forKey: .refresh)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardId = try container.decode(String.self, forKey: .cardId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(nickname, forKey: .nickname)

            try? container.encode(refresh, forKey: .refresh)

            try? container.encode(cardId, forKey: .cardId)
        }
    }

    /*
         Model: AttachCardsResponse
         Used By: Payment
     */
    class AttachCardsResponse: Codable {
        public var success: Bool

        public var data: [String: Any]

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case data

            case message
        }

        public init(data: [String: Any], message: String? = nil, success: Bool) {
            self.success = success

            self.data = data

            self.message = message
        }

        public func duplicate() -> AttachCardsResponse {
            let dict = self.dictionary!
            let copy = AttachCardsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode([String: Any].self, forKey: .data)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: CardPaymentGateway
         Used By: Payment
     */
    class CardPaymentGateway: Codable {
        public var api: String?

        public var customerId: String?

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case api

            case customerId = "customer_id"

            case aggregator
        }

        public init(aggregator: String, api: String? = nil, customerId: String? = nil) {
            self.api = api

            self.customerId = customerId

            self.aggregator = aggregator
        }

        public func duplicate() -> CardPaymentGateway {
            let dict = self.dictionary!
            let copy = CardPaymentGateway(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                api = try container.decode(String.self, forKey: .api)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(api, forKey: .api)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }

    /*
         Model: ActiveCardPaymentGatewayResponse
         Used By: Payment
     */
    class ActiveCardPaymentGatewayResponse: Codable {
        public var cards: CardPaymentGateway

        public var success: Bool

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case cards

            case success

            case message
        }

        public init(cards: CardPaymentGateway, message: String, success: Bool) {
            self.cards = cards

            self.success = success

            self.message = message
        }

        public func duplicate() -> ActiveCardPaymentGatewayResponse {
            let dict = self.dictionary!
            let copy = ActiveCardPaymentGatewayResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cards = try container.decode(CardPaymentGateway.self, forKey: .cards)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cards, forKey: .cards)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: Card
         Used By: Payment
     */
    class Card: Codable {
        public var cardIsin: String?

        public var cardName: String?

        public var cardNumber: String?

        public var cardIssuer: String?

        public var cardBrandImage: String?

        public var cardReference: String?

        public var expYear: Int?

        public var expMonth: Int?

        public var cardBrand: String?

        public var nickname: String?

        public var expired: Bool?

        public var cardFingerprint: String?

        public var cardToken: String?

        public var aggregatorName: String

        public var cardType: String?

        public var cardId: String?

        public enum CodingKeys: String, CodingKey {
            case cardIsin = "card_isin"

            case cardName = "card_name"

            case cardNumber = "card_number"

            case cardIssuer = "card_issuer"

            case cardBrandImage = "card_brand_image"

            case cardReference = "card_reference"

            case expYear = "exp_year"

            case expMonth = "exp_month"

            case cardBrand = "card_brand"

            case nickname

            case expired

            case cardFingerprint = "card_fingerprint"

            case cardToken = "card_token"

            case aggregatorName = "aggregator_name"

            case cardType = "card_type"

            case cardId = "card_id"
        }

        public init(aggregatorName: String, cardBrand: String? = nil, cardBrandImage: String? = nil, cardFingerprint: String? = nil, cardId: String? = nil, cardIsin: String? = nil, cardIssuer: String? = nil, cardName: String? = nil, cardNumber: String? = nil, cardReference: String? = nil, cardToken: String? = nil, cardType: String? = nil, expired: Bool? = nil, expMonth: Int? = nil, expYear: Int? = nil, nickname: String? = nil) {
            self.cardIsin = cardIsin

            self.cardName = cardName

            self.cardNumber = cardNumber

            self.cardIssuer = cardIssuer

            self.cardBrandImage = cardBrandImage

            self.cardReference = cardReference

            self.expYear = expYear

            self.expMonth = expMonth

            self.cardBrand = cardBrand

            self.nickname = nickname

            self.expired = expired

            self.cardFingerprint = cardFingerprint

            self.cardToken = cardToken

            self.aggregatorName = aggregatorName

            self.cardType = cardType

            self.cardId = cardId
        }

        public func duplicate() -> Card {
            let dict = self.dictionary!
            let copy = Card(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cardIsin = try container.decode(String.self, forKey: .cardIsin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardName = try container.decode(String.self, forKey: .cardName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardNumber = try container.decode(String.self, forKey: .cardNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardReference = try container.decode(String.self, forKey: .cardReference)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expYear = try container.decode(Int.self, forKey: .expYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expMonth = try container.decode(Int.self, forKey: .expMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrand = try container.decode(String.self, forKey: .cardBrand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expired = try container.decode(Bool.self, forKey: .expired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                cardType = try container.decode(String.self, forKey: .cardType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardId = try container.decode(String.self, forKey: .cardId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(cardId, forKey: .cardId)
        }
    }

    /*
         Model: ListCardsResponse
         Used By: Payment
     */
    class ListCardsResponse: Codable {
        public var success: Bool

        public var data: [Card]?

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case data

            case message
        }

        public init(data: [Card]? = nil, message: String, success: Bool) {
            self.success = success

            self.data = data

            self.message = message
        }

        public func duplicate() -> ListCardsResponse {
            let dict = self.dictionary!
            let copy = ListCardsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                data = try container.decode([Card].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)
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
        public var success: Bool

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case message
        }

        public init(message: String? = nil, success: Bool) {
            self.success = success

            self.message = message
        }

        public func duplicate() -> DeleteCardsResponse {
            let dict = self.dictionary!
            let copy = DeleteCardsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(message, forKey: .message)
        }
    }

    /*
         Model: ValidateCustomerRequest
         Used By: Payment
     */
    class ValidateCustomerRequest: Codable {
        public var transactionAmountInPaise: Int

        public var payload: String

        public var aggregator: String

        public var phoneNumber: String

        public var merchantParams: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case transactionAmountInPaise = "transaction_amount_in_paise"

            case payload

            case aggregator

            case phoneNumber = "phone_number"

            case merchantParams = "merchant_params"
        }

        public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
            self.transactionAmountInPaise = transactionAmountInPaise

            self.payload = payload

            self.aggregator = aggregator

            self.phoneNumber = phoneNumber

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

            payload = try container.decode(String.self, forKey: .payload)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)

            try? container.encode(payload, forKey: .payload)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
        }
    }

    /*
         Model: ValidateCustomerResponse
         Used By: Payment
     */
    class ValidateCustomerResponse: Codable {
        public var success: Bool

        public var data: [String: Any]

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case data

            case message
        }

        public init(data: [String: Any], message: String, success: Bool) {
            self.success = success

            self.data = data

            self.message = message
        }

        public func duplicate() -> ValidateCustomerResponse {
            let dict = self.dictionary!
            let copy = ValidateCustomerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode([String: Any].self, forKey: .data)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: ChargeCustomerRequest
         Used By: Payment
     */
    class ChargeCustomerRequest: Codable {
        public var orderId: String

        public var verified: Bool?

        public var aggregator: String

        public var transactionToken: String?

        public var amount: Int

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case verified

            case aggregator

            case transactionToken = "transaction_token"

            case amount
        }

        public init(aggregator: String, amount: Int, orderId: String, transactionToken: String? = nil, verified: Bool? = nil) {
            self.orderId = orderId

            self.verified = verified

            self.aggregator = aggregator

            self.transactionToken = transactionToken

            self.amount = amount
        }

        public func duplicate() -> ChargeCustomerRequest {
            let dict = self.dictionary!
            let copy = ChargeCustomerRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                transactionToken = try container.decode(String.self, forKey: .transactionToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(verified, forKey: .verified)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(transactionToken, forKey: .transactionToken)

            try? container.encode(amount, forKey: .amount)
        }
    }

    /*
         Model: ChargeCustomerResponse
         Used By: Payment
     */
    class ChargeCustomerResponse: Codable {
        public var orderId: String

        public var status: String

        public var aggregator: String

        public var success: Bool

        public var message: String

        public var cartId: String?

        public var deliveryAddressId: String?

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case status

            case aggregator

            case success

            case message

            case cartId = "cart_id"

            case deliveryAddressId = "delivery_address_id"
        }

        public init(aggregator: String, cartId: String? = nil, deliveryAddressId: String? = nil, message: String, orderId: String, status: String, success: Bool) {
            self.orderId = orderId

            self.status = status

            self.aggregator = aggregator

            self.success = success

            self.message = message

            self.cartId = cartId

            self.deliveryAddressId = deliveryAddressId
        }

        public func duplicate() -> ChargeCustomerResponse {
            let dict = self.dictionary!
            let copy = ChargeCustomerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            status = try container.decode(String.self, forKey: .status)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(cartId, forKey: .cartId)

            try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)
        }
    }

    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var merchantOrderId: String

        public var email: String

        public var orderId: String

        public var timeout: Int?

        public var customerId: String

        public var aggregator: String

        public var contact: String

        public var currency: String

        public var method: String

        public var vpa: String?

        public var razorpayPaymentId: String?

        public var amount: Int

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case email

            case orderId = "order_id"

            case timeout

            case customerId = "customer_id"

            case aggregator

            case contact

            case currency

            case method

            case vpa

            case razorpayPaymentId = "razorpay_payment_id"

            case amount
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.merchantOrderId = merchantOrderId

            self.email = email

            self.orderId = orderId

            self.timeout = timeout

            self.customerId = customerId

            self.aggregator = aggregator

            self.contact = contact

            self.currency = currency

            self.method = method

            self.vpa = vpa

            self.razorpayPaymentId = razorpayPaymentId

            self.amount = amount
        }

        public func duplicate() -> PaymentInitializationRequest {
            let dict = self.dictionary!
            let copy = PaymentInitializationRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            email = try container.decode(String.self, forKey: .email)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            contact = try container.decode(String.self, forKey: .contact)

            currency = try container.decode(String.self, forKey: .currency)

            method = try container.decode(String.self, forKey: .method)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(amount, forKey: .amount)
        }
    }

    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */
    class PaymentInitializationResponse: Codable {
        public var merchantOrderId: String

        public var timeout: Int?

        public var bqrImage: String?

        public var status: String?

        public var customerId: String?

        public var aggregatorOrderId: String?

        public var aggregator: String

        public var pollingUrl: String

        public var upiPollUrl: String?

        public var success: Bool

        public var currency: String?

        public var method: String

        public var vpa: String?

        public var razorpayPaymentId: String?

        public var virtualId: String?

        public var amount: Int?

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case timeout

            case bqrImage = "bqr_image"

            case status

            case customerId = "customer_id"

            case aggregatorOrderId = "aggregator_order_id"

            case aggregator

            case pollingUrl = "polling_url"

            case upiPollUrl = "upi_poll_url"

            case success

            case currency

            case method

            case vpa

            case razorpayPaymentId = "razorpay_payment_id"

            case virtualId = "virtual_id"

            case amount
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.merchantOrderId = merchantOrderId

            self.timeout = timeout

            self.bqrImage = bqrImage

            self.status = status

            self.customerId = customerId

            self.aggregatorOrderId = aggregatorOrderId

            self.aggregator = aggregator

            self.pollingUrl = pollingUrl

            self.upiPollUrl = upiPollUrl

            self.success = success

            self.currency = currency

            self.method = method

            self.vpa = vpa

            self.razorpayPaymentId = razorpayPaymentId

            self.virtualId = virtualId

            self.amount = amount
        }

        public func duplicate() -> PaymentInitializationResponse {
            let dict = self.dictionary!
            let copy = PaymentInitializationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bqrImage = try container.decode(String.self, forKey: .bqrImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                virtualId = try container.decode(String.self, forKey: .virtualId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Int.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encode(amount, forKey: .amount)
        }
    }

    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var merchantOrderId: String

        public var email: String

        public var orderId: String

        public var status: String

        public var customerId: String

        public var aggregator: String

        public var contact: String

        public var currency: String

        public var method: String

        public var vpa: String

        public var amount: Int

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case email

            case orderId = "order_id"

            case status

            case customerId = "customer_id"

            case aggregator

            case contact

            case currency

            case method

            case vpa

            case amount
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.merchantOrderId = merchantOrderId

            self.email = email

            self.orderId = orderId

            self.status = status

            self.customerId = customerId

            self.aggregator = aggregator

            self.contact = contact

            self.currency = currency

            self.method = method

            self.vpa = vpa

            self.amount = amount
        }

        public func duplicate() -> PaymentStatusUpdateRequest {
            let dict = self.dictionary!
            let copy = PaymentStatusUpdateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            email = try container.decode(String.self, forKey: .email)

            orderId = try container.decode(String.self, forKey: .orderId)

            status = try container.decode(String.self, forKey: .status)

            customerId = try container.decode(String.self, forKey: .customerId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            contact = try container.decode(String.self, forKey: .contact)

            currency = try container.decode(String.self, forKey: .currency)

            method = try container.decode(String.self, forKey: .method)

            vpa = try container.decode(String.self, forKey: .vpa)

            amount = try container.decode(Int.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encode(amount, forKey: .amount)
        }
    }

    /*
         Model: PaymentStatusUpdateResponse
         Used By: Payment
     */
    class PaymentStatusUpdateResponse: Codable {
        public var aggregatorName: String

        public var retry: Bool

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case retry

            case status
        }

        public init(aggregatorName: String, retry: Bool, status: String) {
            self.aggregatorName = aggregatorName

            self.retry = retry

            self.status = status
        }

        public func duplicate() -> PaymentStatusUpdateResponse {
            let dict = self.dictionary!
            let copy = PaymentStatusUpdateResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            retry = try container.decode(Bool.self, forKey: .retry)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: AggregatorRoute
         Used By: Payment
     */
    class AggregatorRoute: Codable {
        public var paymentFlowData: String?

        public var apiLink: String?

        public var data: [String: Any]?

        public var paymentFlow: String?

        public enum CodingKeys: String, CodingKey {
            case paymentFlowData = "payment_flow_data"

            case apiLink = "api_link"

            case data

            case paymentFlow = "payment_flow"
        }

        public init(apiLink: String? = nil, data: [String: Any]? = nil, paymentFlow: String? = nil, paymentFlowData: String? = nil) {
            self.paymentFlowData = paymentFlowData

            self.apiLink = apiLink

            self.data = data

            self.paymentFlow = paymentFlow
        }

        public func duplicate() -> AggregatorRoute {
            let dict = self.dictionary!
            let copy = AggregatorRoute(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentFlowData = try container.decode(String.self, forKey: .paymentFlowData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                apiLink = try container.decode(String.self, forKey: .apiLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentFlow = try container.decode(String.self, forKey: .paymentFlow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentFlowData, forKey: .paymentFlowData)

            try? container.encode(apiLink, forKey: .apiLink)

            try? container.encode(data, forKey: .data)

            try? container.encode(paymentFlow, forKey: .paymentFlow)
        }
    }

    /*
         Model: PaymentFlow
         Used By: Payment
     */
    class PaymentFlow: Codable {
        public var jiopay: AggregatorRoute?

        public var ccavenue: AggregatorRoute?

        public var bqrRazorpay: AggregatorRoute?

        public var stripe: AggregatorRoute?

        public var rupifi: AggregatorRoute?

        public var razorpay: AggregatorRoute?

        public var fynd: AggregatorRoute?

        public var upiRazorpay: AggregatorRoute?

        public var payubiz: AggregatorRoute?

        public var juspay: AggregatorRoute?

        public var epaylater: AggregatorRoute?

        public var mswipe: AggregatorRoute?

        public var simpl: AggregatorRoute?

        public enum CodingKeys: String, CodingKey {
            case jiopay

            case ccavenue

            case bqrRazorpay = "bqr_razorpay"

            case stripe

            case rupifi

            case razorpay

            case fynd

            case upiRazorpay = "upi_razorpay"

            case payubiz

            case juspay

            case epaylater

            case mswipe

            case simpl
        }

        public init(bqrRazorpay: AggregatorRoute? = nil, ccavenue: AggregatorRoute? = nil, epaylater: AggregatorRoute? = nil, fynd: AggregatorRoute? = nil, jiopay: AggregatorRoute? = nil, juspay: AggregatorRoute? = nil, mswipe: AggregatorRoute? = nil, payubiz: AggregatorRoute? = nil, razorpay: AggregatorRoute? = nil, rupifi: AggregatorRoute? = nil, simpl: AggregatorRoute? = nil, stripe: AggregatorRoute? = nil, upiRazorpay: AggregatorRoute? = nil) {
            self.jiopay = jiopay

            self.ccavenue = ccavenue

            self.bqrRazorpay = bqrRazorpay

            self.stripe = stripe

            self.rupifi = rupifi

            self.razorpay = razorpay

            self.fynd = fynd

            self.upiRazorpay = upiRazorpay

            self.payubiz = payubiz

            self.juspay = juspay

            self.epaylater = epaylater

            self.mswipe = mswipe

            self.simpl = simpl
        }

        public func duplicate() -> PaymentFlow {
            let dict = self.dictionary!
            let copy = PaymentFlow(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                jiopay = try container.decode(AggregatorRoute.self, forKey: .jiopay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ccavenue = try container.decode(AggregatorRoute.self, forKey: .ccavenue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bqrRazorpay = try container.decode(AggregatorRoute.self, forKey: .bqrRazorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stripe = try container.decode(AggregatorRoute.self, forKey: .stripe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rupifi = try container.decode(AggregatorRoute.self, forKey: .rupifi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                razorpay = try container.decode(AggregatorRoute.self, forKey: .razorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fynd = try container.decode(AggregatorRoute.self, forKey: .fynd)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upiRazorpay = try container.decode(AggregatorRoute.self, forKey: .upiRazorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payubiz = try container.decode(AggregatorRoute.self, forKey: .payubiz)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                juspay = try container.decode(AggregatorRoute.self, forKey: .juspay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                epaylater = try container.decode(AggregatorRoute.self, forKey: .epaylater)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mswipe = try container.decode(AggregatorRoute.self, forKey: .mswipe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                simpl = try container.decode(AggregatorRoute.self, forKey: .simpl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(jiopay, forKey: .jiopay)

            try? container.encode(ccavenue, forKey: .ccavenue)

            try? container.encode(bqrRazorpay, forKey: .bqrRazorpay)

            try? container.encode(stripe, forKey: .stripe)

            try? container.encode(rupifi, forKey: .rupifi)

            try? container.encode(razorpay, forKey: .razorpay)

            try? container.encode(fynd, forKey: .fynd)

            try? container.encode(upiRazorpay, forKey: .upiRazorpay)

            try? container.encode(payubiz, forKey: .payubiz)

            try? container.encode(juspay, forKey: .juspay)

            try? container.encode(epaylater, forKey: .epaylater)

            try? container.encode(mswipe, forKey: .mswipe)

            try? container.encode(simpl, forKey: .simpl)
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
            case small

            case large
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
        public var displayName: String?

        public var logos: PaymentModeLogo?

        public var packageName: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case logos

            case packageName = "package_name"

            case code
        }

        public init(code: String? = nil, displayName: String? = nil, logos: PaymentModeLogo? = nil, packageName: String? = nil) {
            self.displayName = displayName

            self.logos = logos

            self.packageName = packageName

            self.code = code
        }

        public func duplicate() -> IntentApp {
            let dict = self.dictionary!
            let copy = IntentApp(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logos = try container.decode(PaymentModeLogo.self, forKey: .logos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packageName = try container.decode(String.self, forKey: .packageName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(logos, forKey: .logos)

            try? container.encode(packageName, forKey: .packageName)

            try? container.encode(code, forKey: .code)
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

            case code
        }

        public init(code: String? = nil, packageName: String? = nil) {
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
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
        public var cardName: String?

        public var cardIssuer: String?

        public var expYear: Int?

        public var nickname: String?

        public var expired: Bool?

        public var merchantCode: String?

        public var displayPriority: Int?

        public var intentAppErrorList: [String]?

        public var retryCount: Int?

        public var aggregatorName: String

        public var cardType: String?

        public var cardId: String?

        public var timeout: Int?

        public var intentFlow: Bool?

        public var intentApp: [IntentApp]?

        public var cardBrand: String?

        public var expMonth: Int?

        public var intentAppErrorDictList: [IntentAppErrorList]?

        public var cardIsin: String?

        public var code: String?

        public var logoUrl: PaymentModeLogo?

        public var cardBrandImage: String?

        public var cardReference: String?

        public var cardNumber: String?

        public var displayName: String?

        public var cardFingerprint: String?

        public var name: String?

        public var cardToken: String?

        public var fyndVpa: String?

        public enum CodingKeys: String, CodingKey {
            case cardName = "card_name"

            case cardIssuer = "card_issuer"

            case expYear = "exp_year"

            case nickname

            case expired

            case merchantCode = "merchant_code"

            case displayPriority = "display_priority"

            case intentAppErrorList = "intent_app_error_list"

            case retryCount = "retry_count"

            case aggregatorName = "aggregator_name"

            case cardType = "card_type"

            case cardId = "card_id"

            case timeout

            case intentFlow = "intent_flow"

            case intentApp = "intent_app"

            case cardBrand = "card_brand"

            case expMonth = "exp_month"

            case intentAppErrorDictList = "intent_app_error_dict_list"

            case cardIsin = "card_isin"

            case code

            case logoUrl = "logo_url"

            case cardBrandImage = "card_brand_image"

            case cardReference = "card_reference"

            case cardNumber = "card_number"

            case displayName = "display_name"

            case cardFingerprint = "card_fingerprint"

            case name

            case cardToken = "card_token"

            case fyndVpa = "fynd_vpa"
        }

        public init(aggregatorName: String, cardBrand: String? = nil, cardBrandImage: String? = nil, cardFingerprint: String? = nil, cardId: String? = nil, cardIsin: String? = nil, cardIssuer: String? = nil, cardName: String? = nil, cardNumber: String? = nil, cardReference: String? = nil, cardToken: String? = nil, cardType: String? = nil, code: String? = nil, displayName: String? = nil, displayPriority: Int? = nil, expired: Bool? = nil, expMonth: Int? = nil, expYear: Int? = nil, fyndVpa: String? = nil, intentApp: [IntentApp]? = nil, intentAppErrorDictList: [IntentAppErrorList]? = nil, intentAppErrorList: [String]? = nil, intentFlow: Bool? = nil, logoUrl: PaymentModeLogo? = nil, merchantCode: String? = nil, name: String? = nil, nickname: String? = nil, retryCount: Int? = nil, timeout: Int? = nil) {
            self.cardName = cardName

            self.cardIssuer = cardIssuer

            self.expYear = expYear

            self.nickname = nickname

            self.expired = expired

            self.merchantCode = merchantCode

            self.displayPriority = displayPriority

            self.intentAppErrorList = intentAppErrorList

            self.retryCount = retryCount

            self.aggregatorName = aggregatorName

            self.cardType = cardType

            self.cardId = cardId

            self.timeout = timeout

            self.intentFlow = intentFlow

            self.intentApp = intentApp

            self.cardBrand = cardBrand

            self.expMonth = expMonth

            self.intentAppErrorDictList = intentAppErrorDictList

            self.cardIsin = cardIsin

            self.code = code

            self.logoUrl = logoUrl

            self.cardBrandImage = cardBrandImage

            self.cardReference = cardReference

            self.cardNumber = cardNumber

            self.displayName = displayName

            self.cardFingerprint = cardFingerprint

            self.name = name

            self.cardToken = cardToken

            self.fyndVpa = fyndVpa
        }

        public func duplicate() -> PaymentModeList {
            let dict = self.dictionary!
            let copy = PaymentModeList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cardName = try container.decode(String.self, forKey: .cardName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expYear = try container.decode(Int.self, forKey: .expYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expired = try container.decode(Bool.self, forKey: .expired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                retryCount = try container.decode(Int.self, forKey: .retryCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                cardType = try container.decode(String.self, forKey: .cardType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardId = try container.decode(String.self, forKey: .cardId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intentFlow = try container.decode(Bool.self, forKey: .intentFlow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intentApp = try container.decode([IntentApp].self, forKey: .intentApp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrand = try container.decode(String.self, forKey: .cardBrand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expMonth = try container.decode(Int.self, forKey: .expMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intentAppErrorDictList = try container.decode([IntentAppErrorList].self, forKey: .intentAppErrorDictList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardIsin = try container.decode(String.self, forKey: .cardIsin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardReference = try container.decode(String.self, forKey: .cardReference)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardNumber = try container.decode(String.self, forKey: .cardNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndVpa = try container.decode(String.self, forKey: .fyndVpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(merchantCode, forKey: .merchantCode)

            try? container.encode(displayPriority, forKey: .displayPriority)

            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)

            try? container.encode(retryCount, forKey: .retryCount)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(intentFlow, forKey: .intentFlow)

            try? container.encode(intentApp, forKey: .intentApp)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(code, forKey: .code)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(name, forKey: .name)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(fyndVpa, forKey: .fyndVpa)
        }
    }

    /*
         Model: RootPaymentMode
         Used By: Payment
     */
    class RootPaymentMode: Codable {
        public var logo: String?

        public var anonymousEnable: Bool?

        public var logoUrl: PaymentModeLogo?

        public var displayName: String

        public var list: [PaymentModeList]?

        public var name: String

        public var displayPriority: Int

        public var aggregatorName: String?

        public var addCardEnabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case logo

            case anonymousEnable = "anonymous_enable"

            case logoUrl = "logo_url"

            case displayName = "display_name"

            case list

            case name

            case displayPriority = "display_priority"

            case aggregatorName = "aggregator_name"

            case addCardEnabled = "add_card_enabled"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, list: [PaymentModeList]? = nil, logo: String? = nil, logoUrl: PaymentModeLogo? = nil, name: String) {
            self.logo = logo

            self.anonymousEnable = anonymousEnable

            self.logoUrl = logoUrl

            self.displayName = displayName

            self.list = list

            self.name = name

            self.displayPriority = displayPriority

            self.aggregatorName = aggregatorName

            self.addCardEnabled = addCardEnabled
        }

        public func duplicate() -> RootPaymentMode {
            let dict = self.dictionary!
            let copy = RootPaymentMode(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(logo, forKey: .logo)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)
        }
    }

    /*
         Model: PaymentOptionAndFlow
         Used By: Payment
     */
    class PaymentOptionAndFlow: Codable {
        public var paymentFlows: PaymentFlow

        public var paymentOption: [RootPaymentMode]

        public enum CodingKeys: String, CodingKey {
            case paymentFlows = "payment_flows"

            case paymentOption = "payment_option"
        }

        public init(paymentFlows: PaymentFlow, paymentOption: [RootPaymentMode]) {
            self.paymentFlows = paymentFlows

            self.paymentOption = paymentOption
        }

        public func duplicate() -> PaymentOptionAndFlow {
            let dict = self.dictionary!
            let copy = PaymentOptionAndFlow(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentFlows = try container.decode(PaymentFlow.self, forKey: .paymentFlows)

            paymentOption = try container.decode([RootPaymentMode].self, forKey: .paymentOption)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)

            try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
        }
    }

    /*
         Model: PaymentModeRouteResponse
         Used By: Payment
     */
    class PaymentModeRouteResponse: Codable {
        public var success: Bool

        public var paymentOptions: PaymentOptionAndFlow

        public enum CodingKeys: String, CodingKey {
            case success

            case paymentOptions = "payment_options"
        }

        public init(paymentOptions: PaymentOptionAndFlow, success: Bool) {
            self.success = success

            self.paymentOptions = paymentOptions
        }

        public func duplicate() -> PaymentModeRouteResponse {
            let dict = self.dictionary!
            let copy = PaymentModeRouteResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            paymentOptions = try container.decode(PaymentOptionAndFlow.self, forKey: .paymentOptions)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
        }
    }

    /*
         Model: RupifiBannerData
         Used By: Payment
     */
    class RupifiBannerData: Codable {
        public var kycUrl: String?

        public var status: String?

        public enum CodingKeys: String, CodingKey {
            case kycUrl = "kyc_url"

            case status
        }

        public init(kycUrl: String? = nil, status: String? = nil) {
            self.kycUrl = kycUrl

            self.status = status
        }

        public func duplicate() -> RupifiBannerData {
            let dict = self.dictionary!
            let copy = RupifiBannerData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                kycUrl = try container.decode(String.self, forKey: .kycUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(kycUrl, forKey: .kycUrl)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: RupifiBannerResponse
         Used By: Payment
     */
    class RupifiBannerResponse: Codable {
        public var success: Bool

        public var data: RupifiBannerData

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: RupifiBannerData, success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> RupifiBannerResponse {
            let dict = self.dictionary!
            let copy = RupifiBannerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(RupifiBannerData.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: EpaylaterBannerData
         Used By: Payment
     */
    class EpaylaterBannerData: Codable {
        public var status: String?

        public var display: Bool

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case display

            case message
        }

        public init(display: Bool, message: String? = nil, status: String? = nil) {
            self.status = status

            self.display = display

            self.message = message
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
            } catch {}

            display = try container.decode(Bool.self, forKey: .display)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: EpaylaterBannerResponse
         Used By: Payment
     */
    class EpaylaterBannerResponse: Codable {
        public var success: Bool

        public var data: EpaylaterBannerData

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: EpaylaterBannerData, success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> EpaylaterBannerResponse {
            let dict = self.dictionary!
            let copy = EpaylaterBannerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(EpaylaterBannerData.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: ResendOrCancelPaymentRequest
         Used By: Payment
     */
    class ResendOrCancelPaymentRequest: Codable {
        public var requestType: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case requestType = "request_type"

            case orderId = "order_id"
        }

        public init(orderId: String, requestType: String) {
            self.requestType = requestType

            self.orderId = orderId
        }

        public func duplicate() -> ResendOrCancelPaymentRequest {
            let dict = self.dictionary!
            let copy = ResendOrCancelPaymentRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            requestType = try container.decode(String.self, forKey: .requestType)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requestType, forKey: .requestType)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
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
            case message

            case status
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
        public var success: Bool

        public var data: LinkStatus

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: LinkStatus, success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> ResendOrCancelPaymentResponse {
            let dict = self.dictionary!
            let copy = ResendOrCancelPaymentResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(LinkStatus.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: TransferItemsDetails
         Used By: Payment
     */
    class TransferItemsDetails: Codable {
        public var displayName: String?

        public var name: String

        public var logoLarge: String

        public var logoSmall: String

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case name

            case logoLarge = "logo_large"

            case logoSmall = "logo_small"

            case id
        }

        public init(displayName: String? = nil, id: Int, logoLarge: String, logoSmall: String, name: String) {
            self.displayName = displayName

            self.name = name

            self.logoLarge = logoLarge

            self.logoSmall = logoSmall

            self.id = id
        }

        public func duplicate() -> TransferItemsDetails {
            let dict = self.dictionary!
            let copy = TransferItemsDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            logoLarge = try container.decode(String.self, forKey: .logoLarge)

            logoSmall = try container.decode(String.self, forKey: .logoSmall)

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)

            try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: TransferModeDetails
         Used By: Payment
     */
    class TransferModeDetails: Codable {
        public var items: [TransferItemsDetails]?

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case items

            case displayName = "display_name"
        }

        public init(displayName: String, items: [TransferItemsDetails]? = nil) {
            self.items = items

            self.displayName = displayName
        }

        public func duplicate() -> TransferModeDetails {
            let dict = self.dictionary!
            let copy = TransferModeDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([TransferItemsDetails].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }

    /*
         Model: TransferModeResponse
         Used By: Payment
     */
    class TransferModeResponse: Codable {
        public var data: [TransferModeDetails]

        public enum CodingKeys: String, CodingKey {
            case data
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
        public var transferMode: String

        public var enable: Bool

        public enum CodingKeys: String, CodingKey {
            case transferMode = "transfer_mode"

            case enable
        }

        public init(enable: Bool, transferMode: String) {
            self.transferMode = transferMode

            self.enable = enable
        }

        public func duplicate() -> UpdateRefundTransferModeRequest {
            let dict = self.dictionary!
            let copy = UpdateRefundTransferModeRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            enable = try container.decode(Bool.self, forKey: .enable)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(enable, forKey: .enable)
        }
    }

    /*
         Model: UpdateRefundTransferModeResponse
         Used By: Payment
     */
    class UpdateRefundTransferModeResponse: Codable {
        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case success
        }

        public init(success: Bool? = nil) {
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
            } catch {}
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
        public var accountNo: String

        public var isActive: Bool

        public var ifscCode: String

        public var comment: Bool?

        public var delightsUserName: String?

        public var modifiedOn: String

        public var title: String

        public var mobile: Bool?

        public var subtitle: String

        public var email: String

        public var createdOn: String

        public var bankName: String

        public var id: Int

        public var transferMode: String

        public var displayName: String

        public var beneficiaryId: String

        public var accountHolder: String

        public var branchName: Bool?

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case accountNo = "account_no"

            case isActive = "is_active"

            case ifscCode = "ifsc_code"

            case comment

            case delightsUserName = "delights_user_name"

            case modifiedOn = "modified_on"

            case title

            case mobile

            case subtitle

            case email

            case createdOn = "created_on"

            case bankName = "bank_name"

            case id

            case transferMode = "transfer_mode"

            case displayName = "display_name"

            case beneficiaryId = "beneficiary_id"

            case accountHolder = "account_holder"

            case branchName = "branch_name"

            case address
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.accountNo = accountNo

            self.isActive = isActive

            self.ifscCode = ifscCode

            self.comment = comment

            self.delightsUserName = delightsUserName

            self.modifiedOn = modifiedOn

            self.title = title

            self.mobile = mobile

            self.subtitle = subtitle

            self.email = email

            self.createdOn = createdOn

            self.bankName = bankName

            self.id = id

            self.transferMode = transferMode

            self.displayName = displayName

            self.beneficiaryId = beneficiaryId

            self.accountHolder = accountHolder

            self.branchName = branchName

            self.address = address
        }

        public func duplicate() -> OrderBeneficiaryDetails {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            title = try container.decode(String.self, forKey: .title)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            email = try container.decode(String.self, forKey: .email)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            bankName = try container.decode(String.self, forKey: .bankName)

            id = try container.decode(Int.self, forKey: .id)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            displayName = try container.decode(String.self, forKey: .displayName)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }

    /*
         Model: OrderBeneficiaryResponse
         Used By: Payment
     */
    class OrderBeneficiaryResponse: Codable {
        public var showBeneficiaryDetails: Bool?

        public var beneficiaries: [OrderBeneficiaryDetails]?

        public enum CodingKeys: String, CodingKey {
            case showBeneficiaryDetails = "show_beneficiary_details"

            case beneficiaries
        }

        public init(beneficiaries: [OrderBeneficiaryDetails]? = nil, showBeneficiaryDetails: Bool? = nil) {
            self.showBeneficiaryDetails = showBeneficiaryDetails

            self.beneficiaries = beneficiaries
        }

        public func duplicate() -> OrderBeneficiaryResponse {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                showBeneficiaryDetails = try container.decode(Bool.self, forKey: .showBeneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                beneficiaries = try container.decode([OrderBeneficiaryDetails].self, forKey: .beneficiaries)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(showBeneficiaryDetails, forKey: .showBeneficiaryDetails)

            try? container.encode(beneficiaries, forKey: .beneficiaries)
        }
    }

    /*
         Model: NotFoundResourceError
         Used By: Payment
     */
    class NotFoundResourceError: Codable {
        public var success: Bool

        public var description: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case success

            case description

            case code
        }

        public init(code: String, description: String, success: Bool) {
            self.success = success

            self.description = description

            self.code = code
        }

        public func duplicate() -> NotFoundResourceError {
            let dict = self.dictionary!
            let copy = NotFoundResourceError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            description = try container.decode(String.self, forKey: .description)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: IfscCodeResponse
         Used By: Payment
     */
    class IfscCodeResponse: Codable {
        public var success: Bool?

        public var branchName: String

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case success

            case branchName = "branch_name"

            case bankName = "bank_name"
        }

        public init(bankName: String, branchName: String, success: Bool? = nil) {
            self.success = success

            self.branchName = branchName

            self.bankName = bankName
        }

        public func duplicate() -> IfscCodeResponse {
            let dict = self.dictionary!
            let copy = IfscCodeResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            branchName = try container.decode(String.self, forKey: .branchName)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }

    /*
         Model: ErrorCodeDescription
         Used By: Payment
     */
    class ErrorCodeDescription: Codable {
        public var success: Bool

        public var description: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case success

            case description

            case code
        }

        public init(code: String, description: String, success: Bool) {
            self.success = success

            self.description = description

            self.code = code
        }

        public func duplicate() -> ErrorCodeDescription {
            let dict = self.dictionary!
            let copy = ErrorCodeDescription(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            description = try container.decode(String.self, forKey: .description)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: AddBeneficiaryViaOtpVerificationRequest
         Used By: Payment
     */
    class AddBeneficiaryViaOtpVerificationRequest: Codable {
        public var otp: String

        public var hashKey: String

        public var requestId: String

        public enum CodingKeys: String, CodingKey {
            case otp

            case hashKey = "hash_key"

            case requestId = "request_id"
        }

        public init(hashKey: String, otp: String, requestId: String) {
            self.otp = otp

            self.hashKey = hashKey

            self.requestId = requestId
        }

        public func duplicate() -> AddBeneficiaryViaOtpVerificationRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryViaOtpVerificationRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            otp = try container.decode(String.self, forKey: .otp)

            hashKey = try container.decode(String.self, forKey: .hashKey)

            requestId = try container.decode(String.self, forKey: .requestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(hashKey, forKey: .hashKey)

            try? container.encodeIfPresent(requestId, forKey: .requestId)
        }
    }

    /*
         Model: AddBeneficiaryViaOtpVerificationResponse
         Used By: Payment
     */
    class AddBeneficiaryViaOtpVerificationResponse: Codable {
        public var success: Bool?

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case message
        }

        public init(message: String, success: Bool? = nil) {
            self.success = success

            self.message = message
        }

        public func duplicate() -> AddBeneficiaryViaOtpVerificationResponse {
            let dict = self.dictionary!
            let copy = AddBeneficiaryViaOtpVerificationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: WrongOtpError
         Used By: Payment
     */
    class WrongOtpError: Codable {
        public var success: String

        public var isVerifiedFlag: Bool

        public var description: String

        public enum CodingKeys: String, CodingKey {
            case success

            case isVerifiedFlag = "is_verified_flag"

            case description
        }

        public init(description: String, isVerifiedFlag: Bool, success: String) {
            self.success = success

            self.isVerifiedFlag = isVerifiedFlag

            self.description = description
        }

        public func duplicate() -> WrongOtpError {
            let dict = self.dictionary!
            let copy = WrongOtpError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(String.self, forKey: .success)

            isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)

            description = try container.decode(String.self, forKey: .description)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }

    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */
    class BeneficiaryModeDetails: Codable {
        public var email: String

        public var bankName: String

        public var accountNo: String

        public var wallet: String?

        public var vpa: String?

        public var accountHolder: String

        public var branchName: String

        public var comment: String?

        public var ifscCode: String

        public var mobile: String

        public var address: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case bankName = "bank_name"

            case accountNo = "account_no"

            case wallet

            case vpa

            case accountHolder = "account_holder"

            case branchName = "branch_name"

            case comment

            case ifscCode = "ifsc_code"

            case mobile

            case address
        }

        public init(accountHolder: String, accountNo: String, address: String? = nil, bankName: String, branchName: String, comment: String? = nil, email: String, ifscCode: String, mobile: String, vpa: String? = nil, wallet: String? = nil) {
            self.email = email

            self.bankName = bankName

            self.accountNo = accountNo

            self.wallet = wallet

            self.vpa = vpa

            self.accountHolder = accountHolder

            self.branchName = branchName

            self.comment = comment

            self.ifscCode = ifscCode

            self.mobile = mobile

            self.address = address
        }

        public func duplicate() -> BeneficiaryModeDetails {
            let dict = self.dictionary!
            let copy = BeneficiaryModeDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            branchName = try container.decode(String.self, forKey: .branchName)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            mobile = try container.decode(String.self, forKey: .mobile)

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encode(wallet, forKey: .wallet)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }

    /*
         Model: AddBeneficiaryDetailsRequest
         Used By: Payment
     */
    class AddBeneficiaryDetailsRequest: Codable {
        public var orderId: String

        public var delights: Bool

        public var transferMode: String

        public var otp: String?

        public var requestId: String?

        public var details: BeneficiaryModeDetails

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case delights

            case transferMode = "transfer_mode"

            case otp

            case requestId = "request_id"

            case details

            case shipmentId = "shipment_id"
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String? = nil, requestId: String? = nil, shipmentId: String, transferMode: String) {
            self.orderId = orderId

            self.delights = delights

            self.transferMode = transferMode

            self.otp = otp

            self.requestId = requestId

            self.details = details

            self.shipmentId = shipmentId
        }

        public func duplicate() -> AddBeneficiaryDetailsRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            delights = try container.decode(Bool.self, forKey: .delights)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                otp = try container.decode(String.self, forKey: .otp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(delights, forKey: .delights)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }

    /*
         Model: RefundAccountResponse
         Used By: Payment
     */
    class RefundAccountResponse: Codable {
        public var success: Bool

        public var isVerifiedFlag: Bool?

        public var data: [String: Any]?

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case isVerifiedFlag = "is_verified_flag"

            case data

            case message
        }

        public init(data: [String: Any]? = nil, isVerifiedFlag: Bool? = nil, message: String, success: Bool) {
            self.success = success

            self.isVerifiedFlag = isVerifiedFlag

            self.data = data

            self.message = message
        }

        public func duplicate() -> RefundAccountResponse {
            let dict = self.dictionary!
            let copy = RefundAccountResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: BankDetailsForOTP
         Used By: Payment
     */
    class BankDetailsForOTP: Codable {
        public var bankName: String

        public var accountNo: String

        public var ifscCode: String

        public var accountHolder: String

        public var branchName: String

        public enum CodingKeys: String, CodingKey {
            case bankName = "bank_name"

            case accountNo = "account_no"

            case ifscCode = "ifsc_code"

            case accountHolder = "account_holder"

            case branchName = "branch_name"
        }

        public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
            self.bankName = bankName

            self.accountNo = accountNo

            self.ifscCode = ifscCode

            self.accountHolder = accountHolder

            self.branchName = branchName
        }

        public func duplicate() -> BankDetailsForOTP {
            let dict = self.dictionary!
            let copy = BankDetailsForOTP(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            branchName = try container.decode(String.self, forKey: .branchName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(branchName, forKey: .branchName)
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

            case details
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
        public var mobile: String

        public var countryCode: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case countryCode = "country_code"
        }

        public init(countryCode: String, mobile: String) {
            self.mobile = mobile

            self.countryCode = countryCode
        }

        public func duplicate() -> WalletOtpRequest {
            let dict = self.dictionary!
            let copy = WalletOtpRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

            countryCode = try container.decode(String.self, forKey: .countryCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }

    /*
         Model: WalletOtpResponse
         Used By: Payment
     */
    class WalletOtpResponse: Codable {
        public var success: Bool?

        public var isVerifiedFlag: String

        public var requestId: String

        public enum CodingKeys: String, CodingKey {
            case success

            case isVerifiedFlag = "is_verified_flag"

            case requestId = "request_id"
        }

        public init(isVerifiedFlag: String, requestId: String, success: Bool? = nil) {
            self.success = success

            self.isVerifiedFlag = isVerifiedFlag

            self.requestId = requestId
        }

        public func duplicate() -> WalletOtpResponse {
            let dict = self.dictionary!
            let copy = WalletOtpResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)

            requestId = try container.decode(String.self, forKey: .requestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(requestId, forKey: .requestId)
        }
    }

    /*
         Model: SetDefaultBeneficiaryRequest
         Used By: Payment
     */
    class SetDefaultBeneficiaryRequest: Codable {
        public var beneficiaryId: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case beneficiaryId = "beneficiary_id"

            case orderId = "order_id"
        }

        public init(beneficiaryId: String, orderId: String) {
            self.beneficiaryId = beneficiaryId

            self.orderId = orderId
        }

        public func duplicate() -> SetDefaultBeneficiaryRequest {
            let dict = self.dictionary!
            let copy = SetDefaultBeneficiaryRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }

    /*
         Model: SetDefaultBeneficiaryResponse
         Used By: Payment
     */
    class SetDefaultBeneficiaryResponse: Codable {
        public var success: Bool?

        public var isBeneficiarySet: Bool

        public enum CodingKeys: String, CodingKey {
            case success

            case isBeneficiarySet = "is_beneficiary_set"
        }

        public init(isBeneficiarySet: Bool, success: Bool? = nil) {
            self.success = success

            self.isBeneficiarySet = isBeneficiarySet
        }

        public func duplicate() -> SetDefaultBeneficiaryResponse {
            let dict = self.dictionary!
            let copy = SetDefaultBeneficiaryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isBeneficiarySet = try container.decode(Bool.self, forKey: .isBeneficiarySet)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isBeneficiarySet, forKey: .isBeneficiarySet)
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
            case currency

            case value

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
        public var balance: BalanceDetails?

        public var merchantCustomerRefId: String

        public var statusMessage: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case balance

            case merchantCustomerRefId = "merchant_customer_ref_id"

            case statusMessage = "status_message"

            case status
        }

        public init(balance: BalanceDetails? = nil, merchantCustomerRefId: String, status: String, statusMessage: String) {
            self.balance = balance

            self.merchantCustomerRefId = merchantCustomerRefId

            self.statusMessage = statusMessage

            self.status = status
        }

        public func duplicate() -> CreditSummary {
            let dict = self.dictionary!
            let copy = CreditSummary(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                balance = try container.decode(BalanceDetails.self, forKey: .balance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantCustomerRefId = try container.decode(String.self, forKey: .merchantCustomerRefId)

            statusMessage = try container.decode(String.self, forKey: .statusMessage)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(balance, forKey: .balance)

            try? container.encodeIfPresent(merchantCustomerRefId, forKey: .merchantCustomerRefId)

            try? container.encodeIfPresent(statusMessage, forKey: .statusMessage)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: CustomerCreditSummaryResponse
         Used By: Payment
     */
    class CustomerCreditSummaryResponse: Codable {
        public var success: Bool

        public var data: CreditSummary?

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: CreditSummary? = nil, success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> CustomerCreditSummaryResponse {
            let dict = self.dictionary!
            let copy = CustomerCreditSummaryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                data = try container.decode(CreditSummary.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
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

            case status
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
        public var success: Bool

        public var data: RedirectURL

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: RedirectURL, success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> RedirectToAggregatorResponse {
            let dict = self.dictionary!
            let copy = RedirectToAggregatorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(RedirectURL.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: CreditDetail
         Used By: Payment
     */
    class CreditDetail: Codable {
        public var isRegistered: Bool

        public var signupUrl: String

        public var status: Bool

        public enum CodingKeys: String, CodingKey {
            case isRegistered = "is_registered"

            case signupUrl = "signup_url"

            case status
        }

        public init(isRegistered: Bool, signupUrl: String, status: Bool) {
            self.isRegistered = isRegistered

            self.signupUrl = signupUrl

            self.status = status
        }

        public func duplicate() -> CreditDetail {
            let dict = self.dictionary!
            let copy = CreditDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isRegistered = try container.decode(Bool.self, forKey: .isRegistered)

            signupUrl = try container.decode(String.self, forKey: .signupUrl)

            status = try container.decode(Bool.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isRegistered, forKey: .isRegistered)

            try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: CheckCreditResponse
         Used By: Payment
     */
    class CheckCreditResponse: Codable {
        public var success: Bool

        public var data: CreditDetail

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: CreditDetail, success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> CheckCreditResponse {
            let dict = self.dictionary!
            let copy = CheckCreditResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(CreditDetail.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: KYCAddress
         Used By: Payment
     */
    class KYCAddress: Codable {
        public var addressline2: String?

        public var landMark: String?

        public var pincode: String

        public var ownershipType: String?

        public var city: String

        public var addressline1: String

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case addressline2

            case landMark = "land_mark"

            case pincode

            case ownershipType = "ownership_type"

            case city

            case addressline1

            case state
        }

        public init(addressline1: String, addressline2: String? = nil, city: String, landMark: String? = nil, ownershipType: String? = nil, pincode: String, state: String) {
            self.addressline2 = addressline2

            self.landMark = landMark

            self.pincode = pincode

            self.ownershipType = ownershipType

            self.city = city

            self.addressline1 = addressline1

            self.state = state
        }

        public func duplicate() -> KYCAddress {
            let dict = self.dictionary!
            let copy = KYCAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                addressline2 = try container.decode(String.self, forKey: .addressline2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landMark = try container.decode(String.self, forKey: .landMark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                ownershipType = try container.decode(String.self, forKey: .ownershipType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            addressline1 = try container.decode(String.self, forKey: .addressline1)

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(addressline2, forKey: .addressline2)

            try? container.encode(landMark, forKey: .landMark)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(ownershipType, forKey: .ownershipType)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressline1, forKey: .addressline1)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }

    /*
         Model: BusinessDetails
         Used By: Payment
     */
    class BusinessDetails: Codable {
        public var businessOwnershipType: String?

        public var fssai: String?

        public var businessType: String?

        public var vintage: String?

        public var fda: String?

        public var pan: String?

        public var entityType: String?

        public var name: String?

        public var gstin: String?

        public var shopAndEstablishment: [String: Any]?

        public var address: KYCAddress?

        public enum CodingKeys: String, CodingKey {
            case businessOwnershipType = "business_ownership_type"

            case fssai

            case businessType = "business_type"

            case vintage

            case fda

            case pan

            case entityType = "entity_type"

            case name

            case gstin

            case shopAndEstablishment = "shop_and_establishment"

            case address
        }

        public init(address: KYCAddress? = nil, businessOwnershipType: String? = nil, businessType: String? = nil, entityType: String? = nil, fda: String? = nil, fssai: String? = nil, gstin: String? = nil, name: String? = nil, pan: String? = nil, shopAndEstablishment: [String: Any]? = nil, vintage: String? = nil) {
            self.businessOwnershipType = businessOwnershipType

            self.fssai = fssai

            self.businessType = businessType

            self.vintage = vintage

            self.fda = fda

            self.pan = pan

            self.entityType = entityType

            self.name = name

            self.gstin = gstin

            self.shopAndEstablishment = shopAndEstablishment

            self.address = address
        }

        public func duplicate() -> BusinessDetails {
            let dict = self.dictionary!
            let copy = BusinessDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                businessOwnershipType = try container.decode(String.self, forKey: .businessOwnershipType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fssai = try container.decode(String.self, forKey: .fssai)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessType = try container.decode(String.self, forKey: .businessType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vintage = try container.decode(String.self, forKey: .vintage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fda = try container.decode(String.self, forKey: .fda)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pan = try container.decode(String.self, forKey: .pan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shopAndEstablishment = try container.decode([String: Any].self, forKey: .shopAndEstablishment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(KYCAddress.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(businessOwnershipType, forKey: .businessOwnershipType)

            try? container.encode(fssai, forKey: .fssai)

            try? container.encode(businessType, forKey: .businessType)

            try? container.encode(vintage, forKey: .vintage)

            try? container.encode(fda, forKey: .fda)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(entityType, forKey: .entityType)

            try? container.encode(name, forKey: .name)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(shopAndEstablishment, forKey: .shopAndEstablishment)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }

    /*
         Model: DeviceDetails
         Used By: Payment
     */
    class DeviceDetails: Codable {
        public var identificationNumber: String?

        public var osVersion: String?

        public var deviceMake: String?

        public var os: String?

        public var identifierType: String?

        public var deviceModel: String?

        public var deviceType: String?

        public enum CodingKeys: String, CodingKey {
            case identificationNumber = "identification_number"

            case osVersion = "os_version"

            case deviceMake = "device_make"

            case os

            case identifierType = "identifier_type"

            case deviceModel = "device_model"

            case deviceType = "device_type"
        }

        public init(deviceMake: String? = nil, deviceModel: String? = nil, deviceType: String? = nil, identificationNumber: String? = nil, identifierType: String? = nil, os: String? = nil, osVersion: String? = nil) {
            self.identificationNumber = identificationNumber

            self.osVersion = osVersion

            self.deviceMake = deviceMake

            self.os = os

            self.identifierType = identifierType

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
                identificationNumber = try container.decode(String.self, forKey: .identificationNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                osVersion = try container.decode(String.self, forKey: .osVersion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceMake = try container.decode(String.self, forKey: .deviceMake)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                os = try container.decode(String.self, forKey: .os)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifierType = try container.decode(String.self, forKey: .identifierType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceModel = try container.decode(String.self, forKey: .deviceModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceType = try container.decode(String.self, forKey: .deviceType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(identificationNumber, forKey: .identificationNumber)

            try? container.encode(osVersion, forKey: .osVersion)

            try? container.encode(deviceMake, forKey: .deviceMake)

            try? container.encode(os, forKey: .os)

            try? container.encode(identifierType, forKey: .identifierType)

            try? container.encode(deviceModel, forKey: .deviceModel)

            try? container.encode(deviceType, forKey: .deviceType)
        }
    }

    /*
         Model: MarketplaceInfo
         Used By: Payment
     */
    class MarketplaceInfo: Codable {
        public var name: String

        public var dateOfJoining: String?

        public var membershipId: String

        public enum CodingKeys: String, CodingKey {
            case name

            case dateOfJoining = "date_of_joining"

            case membershipId = "membership_id"
        }

        public init(dateOfJoining: String? = nil, membershipId: String, name: String) {
            self.name = name

            self.dateOfJoining = dateOfJoining

            self.membershipId = membershipId
        }

        public func duplicate() -> MarketplaceInfo {
            let dict = self.dictionary!
            let copy = MarketplaceInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                dateOfJoining = try container.decode(String.self, forKey: .dateOfJoining)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            membershipId = try container.decode(String.self, forKey: .membershipId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(dateOfJoining, forKey: .dateOfJoining)

            try? container.encodeIfPresent(membershipId, forKey: .membershipId)
        }
    }

    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var email: String

        public var dob: String

        public var addressAsPerId: KYCAddress

        public var emailVerified: Bool

        public var lastName: String?

        public var mothersName: String?

        public var drivingLicense: String?

        public var fathersName: String?

        public var gender: String?

        public var pan: String?

        public var middleName: String?

        public var passport: String?

        public var mobileVerified: Bool

        public var firstName: String

        public var phone: String

        public var voterId: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case dob

            case addressAsPerId = "address_as_per_id"

            case emailVerified = "email_verified"

            case lastName = "last_name"

            case mothersName = "mothers_name"

            case drivingLicense = "driving_license"

            case fathersName = "fathers_name"

            case gender

            case pan

            case middleName = "middle_name"

            case passport

            case mobileVerified = "mobile_verified"

            case firstName = "first_name"

            case phone

            case voterId = "voter_id"
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.email = email

            self.dob = dob

            self.addressAsPerId = addressAsPerId

            self.emailVerified = emailVerified

            self.lastName = lastName

            self.mothersName = mothersName

            self.drivingLicense = drivingLicense

            self.fathersName = fathersName

            self.gender = gender

            self.pan = pan

            self.middleName = middleName

            self.passport = passport

            self.mobileVerified = mobileVerified

            self.firstName = firstName

            self.phone = phone

            self.voterId = voterId
        }

        public func duplicate() -> UserPersonalInfoInDetails {
            let dict = self.dictionary!
            let copy = UserPersonalInfoInDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            dob = try container.decode(String.self, forKey: .dob)

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mothersName = try container.decode(String.self, forKey: .mothersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fathersName = try container.decode(String.self, forKey: .fathersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pan = try container.decode(String.self, forKey: .pan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                passport = try container.decode(String.self, forKey: .passport)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            firstName = try container.decode(String.self, forKey: .firstName)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                voterId = try container.decode(String.self, forKey: .voterId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(dob, forKey: .dob)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encode(gender, forKey: .gender)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(passport, forKey: .passport)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(voterId, forKey: .voterId)
        }
    }

    /*
         Model: CustomerOnboardingRequest
         Used By: Payment
     */
    class CustomerOnboardingRequest: Codable {
        public var businessInfo: BusinessDetails?

        public var device: DeviceDetails?

        public var marketplaceInfo: MarketplaceInfo?

        public var source: String

        public var aggregator: String

        public var personalInfo: UserPersonalInfoInDetails

        public enum CodingKeys: String, CodingKey {
            case businessInfo = "business_info"

            case device

            case marketplaceInfo = "marketplace_info"

            case source

            case aggregator

            case personalInfo = "personal_info"
        }

        public init(aggregator: String, businessInfo: BusinessDetails? = nil, device: DeviceDetails? = nil, marketplaceInfo: MarketplaceInfo? = nil, personalInfo: UserPersonalInfoInDetails, source: String) {
            self.businessInfo = businessInfo

            self.device = device

            self.marketplaceInfo = marketplaceInfo

            self.source = source

            self.aggregator = aggregator

            self.personalInfo = personalInfo
        }

        public func duplicate() -> CustomerOnboardingRequest {
            let dict = self.dictionary!
            let copy = CustomerOnboardingRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                businessInfo = try container.decode(BusinessDetails.self, forKey: .businessInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                device = try container.decode(DeviceDetails.self, forKey: .device)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceInfo = try container.decode(MarketplaceInfo.self, forKey: .marketplaceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            source = try container.decode(String.self, forKey: .source)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            personalInfo = try container.decode(UserPersonalInfoInDetails.self, forKey: .personalInfo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(device, forKey: .device)

            try? container.encodeIfPresent(marketplaceInfo, forKey: .marketplaceInfo)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(personalInfo, forKey: .personalInfo)
        }
    }

    /*
         Model: OnboardSummary
         Used By: Payment
     */
    class OnboardSummary: Codable {
        public var session: [String: Any]

        public var status: Bool

        public var redirectUrl: String

        public enum CodingKeys: String, CodingKey {
            case session

            case status

            case redirectUrl = "redirect_url"
        }

        public init(redirectUrl: String, session: [String: Any], status: Bool) {
            self.session = session

            self.status = status

            self.redirectUrl = redirectUrl
        }

        public func duplicate() -> OnboardSummary {
            let dict = self.dictionary!
            let copy = OnboardSummary(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            session = try container.decode([String: Any].self, forKey: .session)

            status = try container.decode(Bool.self, forKey: .status)

            redirectUrl = try container.decode(String.self, forKey: .redirectUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(session, forKey: .session)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
        }
    }

    /*
         Model: CustomerOnboardingResponse
         Used By: Payment
     */
    class CustomerOnboardingResponse: Codable {
        public var success: Bool

        public var data: OnboardSummary

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: OnboardSummary, success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> CustomerOnboardingResponse {
            let dict = self.dictionary!
            let copy = CustomerOnboardingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(OnboardSummary.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
