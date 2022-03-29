import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: AggregatorConfigDetail
         Used By: Payment
     */
    class AggregatorConfigDetail: Codable {
        public var api: String?

        public var userId: String?

        public var merchantKey: String?

        public var sdk: Bool?

        public var pin: String?

        public var secret: String

        public var verifyApi: String?

        public var merchantId: String?

        public var configType: String

        public var key: String

        public enum CodingKeys: String, CodingKey {
            case api

            case userId = "user_id"

            case merchantKey = "merchant_key"

            case sdk

            case pin

            case secret

            case verifyApi = "verify_api"

            case merchantId = "merchant_id"

            case configType = "config_type"

            case key
        }

        public init(api: String?, configType: String, key: String, merchantId: String?, merchantKey: String?, pin: String?, sdk: Bool?, secret: String, userId: String?, verifyApi: String?) {
            self.api = api

            self.userId = userId

            self.merchantKey = merchantKey

            self.sdk = sdk

            self.pin = pin

            self.secret = secret

            self.verifyApi = verifyApi

            self.merchantId = merchantId

            self.configType = configType

            self.key = key
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
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            secret = try container.decode(String.self, forKey: .secret)

            do {
                verifyApi = try container.decode(String.self, forKey: .verifyApi)

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

            key = try container.decode(String.self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(api, forKey: .api)

            try? container.encode(userId, forKey: .userId)

            try? container.encode(merchantKey, forKey: .merchantKey)

            try? container.encode(sdk, forKey: .sdk)

            try? container.encode(pin, forKey: .pin)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encode(verifyApi, forKey: .verifyApi)

            try? container.encode(merchantId, forKey: .merchantId)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }

    /*
         Model: AggregatorsConfigDetailResponse
         Used By: Payment
     */
    class AggregatorsConfigDetailResponse: Codable {
        public var stripe: AggregatorConfigDetail?

        public var razorpay: AggregatorConfigDetail?

        public var simpl: AggregatorConfigDetail?

        public var juspay: AggregatorConfigDetail?

        public var ccavenue: AggregatorConfigDetail?

        public var rupifi: AggregatorConfigDetail?

        public var success: Bool

        public var mswipe: AggregatorConfigDetail?

        public var env: String

        public var payumoney: AggregatorConfigDetail?

        public enum CodingKeys: String, CodingKey {
            case stripe

            case razorpay

            case simpl

            case juspay

            case ccavenue

            case rupifi

            case success

            case mswipe

            case env

            case payumoney
        }

        public init(ccavenue: AggregatorConfigDetail?, env: String, juspay: AggregatorConfigDetail?, mswipe: AggregatorConfigDetail?, payumoney: AggregatorConfigDetail?, razorpay: AggregatorConfigDetail?, rupifi: AggregatorConfigDetail?, simpl: AggregatorConfigDetail?, stripe: AggregatorConfigDetail?, success: Bool) {
            self.stripe = stripe

            self.razorpay = razorpay

            self.simpl = simpl

            self.juspay = juspay

            self.ccavenue = ccavenue

            self.rupifi = rupifi

            self.success = success

            self.mswipe = mswipe

            self.env = env

            self.payumoney = payumoney
        }

        public func duplicate() -> AggregatorsConfigDetailResponse {
            let dict = self.dictionary!
            let copy = AggregatorsConfigDetailResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stripe = try container.decode(AggregatorConfigDetail.self, forKey: .stripe)

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
                simpl = try container.decode(AggregatorConfigDetail.self, forKey: .simpl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                juspay = try container.decode(AggregatorConfigDetail.self, forKey: .juspay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ccavenue = try container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)

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

            success = try container.decode(Bool.self, forKey: .success)

            do {
                mswipe = try container.decode(AggregatorConfigDetail.self, forKey: .mswipe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            env = try container.decode(String.self, forKey: .env)

            do {
                payumoney = try container.decode(AggregatorConfigDetail.self, forKey: .payumoney)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stripe, forKey: .stripe)

            try? container.encodeIfPresent(razorpay, forKey: .razorpay)

            try? container.encodeIfPresent(simpl, forKey: .simpl)

            try? container.encodeIfPresent(juspay, forKey: .juspay)

            try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)

            try? container.encodeIfPresent(rupifi, forKey: .rupifi)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(mswipe, forKey: .mswipe)

            try? container.encodeIfPresent(env, forKey: .env)

            try? container.encodeIfPresent(payumoney, forKey: .payumoney)
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
            case code

            case description
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
            case error

            case success
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
        public var cardId: String

        public var nameOnCard: String?

        public var refresh: Bool?

        public var nickname: String?

        public enum CodingKeys: String, CodingKey {
            case cardId = "card_id"

            case nameOnCard = "name_on_card"

            case refresh

            case nickname
        }

        public init(cardId: String, nameOnCard: String?, nickname: String?, refresh: Bool?) {
            self.cardId = cardId

            self.nameOnCard = nameOnCard

            self.refresh = refresh

            self.nickname = nickname
        }

        public func duplicate() -> AttachCardRequest {
            let dict = self.dictionary!
            let copy = AttachCardRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cardId = try container.decode(String.self, forKey: .cardId)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

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

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encode(refresh, forKey: .refresh)

            try? container.encodeIfPresent(nickname, forKey: .nickname)
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

        public init(data: [String: Any], message: String?, success: Bool) {
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

        public var aggregator: String

        public var customerId: String?

        public enum CodingKeys: String, CodingKey {
            case api

            case aggregator

            case customerId = "customer_id"
        }

        public init(aggregator: String, api: String?, customerId: String?) {
            self.api = api

            self.aggregator = aggregator

            self.customerId = customerId
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

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(api, forKey: .api)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(customerId, forKey: .customerId)
        }
    }

    /*
         Model: ActiveCardPaymentGatewayResponse
         Used By: Payment
     */
    class ActiveCardPaymentGatewayResponse: Codable {
        public var success: Bool

        public var cards: CardPaymentGateway

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case cards

            case message
        }

        public init(cards: CardPaymentGateway, message: String, success: Bool) {
            self.success = success

            self.cards = cards

            self.message = message
        }

        public func duplicate() -> ActiveCardPaymentGatewayResponse {
            let dict = self.dictionary!
            let copy = ActiveCardPaymentGatewayResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            cards = try container.decode(CardPaymentGateway.self, forKey: .cards)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(cards, forKey: .cards)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: Card
         Used By: Payment
     */
    class Card: Codable {
        public var aggregatorName: String

        public var nickname: String?

        public var cardIssuer: String?

        public var cardId: String?

        public var expMonth: Int?

        public var cardFingerprint: String?

        public var cardToken: String?

        public var cardBrandImage: String?

        public var cardReference: String?

        public var cardName: String?

        public var expired: Bool?

        public var cardType: String?

        public var cardBrand: String?

        public var expYear: Int?

        public var cardNumber: String?

        public var cardIsin: String?

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case nickname

            case cardIssuer = "card_issuer"

            case cardId = "card_id"

            case expMonth = "exp_month"

            case cardFingerprint = "card_fingerprint"

            case cardToken = "card_token"

            case cardBrandImage = "card_brand_image"

            case cardReference = "card_reference"

            case cardName = "card_name"

            case expired

            case cardType = "card_type"

            case cardBrand = "card_brand"

            case expYear = "exp_year"

            case cardNumber = "card_number"

            case cardIsin = "card_isin"
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, expired: Bool?, expMonth: Int?, expYear: Int?, nickname: String?) {
            self.aggregatorName = aggregatorName

            self.nickname = nickname

            self.cardIssuer = cardIssuer

            self.cardId = cardId

            self.expMonth = expMonth

            self.cardFingerprint = cardFingerprint

            self.cardToken = cardToken

            self.cardBrandImage = cardBrandImage

            self.cardReference = cardReference

            self.cardName = cardName

            self.expired = expired

            self.cardType = cardType

            self.cardBrand = cardBrand

            self.expYear = expYear

            self.cardNumber = cardNumber

            self.cardIsin = cardIsin
        }

        public func duplicate() -> Card {
            let dict = self.dictionary!
            let copy = Card(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

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
                cardId = try container.decode(String.self, forKey: .cardId)

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
                cardName = try container.decode(String.self, forKey: .cardName)

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
                cardType = try container.decode(String.self, forKey: .cardType)

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
                expYear = try container.decode(Int.self, forKey: .expYear)

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
                cardIsin = try container.decode(String.self, forKey: .cardIsin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(cardIsin, forKey: .cardIsin)
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

        public init(data: [Card]?, message: String, success: Bool) {
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

        public init(message: String?, success: Bool) {
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
        public var aggregator: String

        public var transactionAmountInPaise: Int

        public var phoneNumber: String

        public var merchantParams: [String: Any]

        public var payload: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case transactionAmountInPaise = "transaction_amount_in_paise"

            case phoneNumber = "phone_number"

            case merchantParams = "merchant_params"

            case payload
        }

        public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
            self.aggregator = aggregator

            self.transactionAmountInPaise = transactionAmountInPaise

            self.phoneNumber = phoneNumber

            self.merchantParams = merchantParams

            self.payload = payload
        }

        public func duplicate() -> ValidateCustomerRequest {
            let dict = self.dictionary!
            let copy = ValidateCustomerRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)

            payload = try container.decode(String.self, forKey: .payload)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)

            try? container.encode(payload, forKey: .payload)
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
        public var aggregator: String

        public var amount: Int

        public var verified: Bool?

        public var orderId: String

        public var transactionToken: String?

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case amount

            case verified

            case orderId = "order_id"

            case transactionToken = "transaction_token"
        }

        public init(aggregator: String, amount: Int, orderId: String, transactionToken: String?, verified: Bool?) {
            self.aggregator = aggregator

            self.amount = amount

            self.verified = verified

            self.orderId = orderId

            self.transactionToken = transactionToken
        }

        public func duplicate() -> ChargeCustomerRequest {
            let dict = self.dictionary!
            let copy = ChargeCustomerRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                transactionToken = try container.decode(String.self, forKey: .transactionToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(verified, forKey: .verified)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(transactionToken, forKey: .transactionToken)
        }
    }

    /*
         Model: ChargeCustomerResponse
         Used By: Payment
     */
    class ChargeCustomerResponse: Codable {
        public var status: String

        public var aggregator: String

        public var cartId: String?

        public var orderId: String

        public var success: Bool

        public var deliveryAddressId: String?

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case status

            case aggregator

            case cartId = "cart_id"

            case orderId = "order_id"

            case success

            case deliveryAddressId = "delivery_address_id"

            case message
        }

        public init(aggregator: String, cartId: String?, deliveryAddressId: String?, message: String, orderId: String, status: String, success: Bool) {
            self.status = status

            self.aggregator = aggregator

            self.cartId = cartId

            self.orderId = orderId

            self.success = success

            self.deliveryAddressId = deliveryAddressId

            self.message = message
        }

        public func duplicate() -> ChargeCustomerResponse {
            let dict = self.dictionary!
            let copy = ChargeCustomerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(cartId, forKey: .cartId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var razorpayPaymentId: String?

        public var method: String

        public var aggregator: String

        public var email: String

        public var timeout: Int?

        public var amount: Int

        public var merchantOrderId: String

        public var vpa: String?

        public var orderId: String

        public var customerId: String

        public var contact: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case razorpayPaymentId = "razorpay_payment_id"

            case method

            case aggregator

            case email

            case timeout

            case amount

            case merchantOrderId = "merchant_order_id"

            case vpa

            case orderId = "order_id"

            case customerId = "customer_id"

            case contact

            case currency
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String?, timeout: Int?, vpa: String?) {
            self.razorpayPaymentId = razorpayPaymentId

            self.method = method

            self.aggregator = aggregator

            self.email = email

            self.timeout = timeout

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.vpa = vpa

            self.orderId = orderId

            self.customerId = customerId

            self.contact = contact

            self.currency = currency
        }

        public func duplicate() -> PaymentInitializationRequest {
            let dict = self.dictionary!
            let copy = PaymentInitializationRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            email = try container.decode(String.self, forKey: .email)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            customerId = try container.decode(String.self, forKey: .customerId)

            contact = try container.decode(String.self, forKey: .contact)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }

    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */
    class PaymentInitializationResponse: Codable {
        public var status: String?

        public var merchantOrderId: String

        public var aggregator: String

        public var method: String

        public var vpa: String?

        public var amount: Int?

        public var pollingUrl: String

        public var upiPollUrl: String?

        public var razorpayPaymentId: String?

        public var virtualId: String?

        public var timeout: Int?

        public var bqrImage: String?

        public var customerId: String?

        public var success: Bool

        public var aggregatorOrderId: String?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case merchantOrderId = "merchant_order_id"

            case aggregator

            case method

            case vpa

            case amount

            case pollingUrl = "polling_url"

            case upiPollUrl = "upi_poll_url"

            case razorpayPaymentId = "razorpay_payment_id"

            case virtualId = "virtual_id"

            case timeout

            case bqrImage = "bqr_image"

            case customerId = "customer_id"

            case success

            case aggregatorOrderId = "aggregator_order_id"

            case currency
        }

        public init(aggregator: String, aggregatorOrderId: String?, amount: Int?, bqrImage: String?, currency: String?, customerId: String?, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String?, status: String?, success: Bool, timeout: Int?, upiPollUrl: String?, virtualId: String?, vpa: String?) {
            self.status = status

            self.merchantOrderId = merchantOrderId

            self.aggregator = aggregator

            self.method = method

            self.vpa = vpa

            self.amount = amount

            self.pollingUrl = pollingUrl

            self.upiPollUrl = upiPollUrl

            self.razorpayPaymentId = razorpayPaymentId

            self.virtualId = virtualId

            self.timeout = timeout

            self.bqrImage = bqrImage

            self.customerId = customerId

            self.success = success

            self.aggregatorOrderId = aggregatorOrderId

            self.currency = currency
        }

        public func duplicate() -> PaymentInitializationResponse {
            let dict = self.dictionary!
            let copy = PaymentInitializationResponse(dictionary: dict)!
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

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            method = try container.decode(String.self, forKey: .method)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

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

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

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
                customerId = try container.decode(String.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(currency, forKey: .currency)
        }
    }

    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var status: String

        public var method: String

        public var aggregator: String

        public var email: String

        public var merchantOrderId: String

        public var amount: Int

        public var vpa: String

        public var orderId: String

        public var customerId: String

        public var contact: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case status

            case method

            case aggregator

            case email

            case merchantOrderId = "merchant_order_id"

            case amount

            case vpa

            case orderId = "order_id"

            case customerId = "customer_id"

            case contact

            case currency
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.status = status

            self.method = method

            self.aggregator = aggregator

            self.email = email

            self.merchantOrderId = merchantOrderId

            self.amount = amount

            self.vpa = vpa

            self.orderId = orderId

            self.customerId = customerId

            self.contact = contact

            self.currency = currency
        }

        public func duplicate() -> PaymentStatusUpdateRequest {
            let dict = self.dictionary!
            let copy = PaymentStatusUpdateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            method = try container.decode(String.self, forKey: .method)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            email = try container.decode(String.self, forKey: .email)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            amount = try container.decode(Int.self, forKey: .amount)

            vpa = try container.decode(String.self, forKey: .vpa)

            orderId = try container.decode(String.self, forKey: .orderId)

            customerId = try container.decode(String.self, forKey: .customerId)

            contact = try container.decode(String.self, forKey: .contact)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }

    /*
         Model: PaymentStatusUpdateResponse
         Used By: Payment
     */
    class PaymentStatusUpdateResponse: Codable {
        public var status: String

        public var aggregatorName: String

        public var retry: Bool

        public enum CodingKeys: String, CodingKey {
            case status

            case aggregatorName = "aggregator_name"

            case retry
        }

        public init(aggregatorName: String, retry: Bool, status: String) {
            self.status = status

            self.aggregatorName = aggregatorName

            self.retry = retry
        }

        public func duplicate() -> PaymentStatusUpdateResponse {
            let dict = self.dictionary!
            let copy = PaymentStatusUpdateResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            retry = try container.decode(Bool.self, forKey: .retry)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(retry, forKey: .retry)
        }
    }

    /*
         Model: AggregatorRoute
         Used By: Payment
     */
    class AggregatorRoute: Codable {
        public var data: [String: Any]?

        public var paymentFlowData: String?

        public var paymentFlow: String?

        public var apiLink: String?

        public enum CodingKeys: String, CodingKey {
            case data

            case paymentFlowData = "payment_flow_data"

            case paymentFlow = "payment_flow"

            case apiLink = "api_link"
        }

        public init(apiLink: String?, data: [String: Any]?, paymentFlow: String?, paymentFlowData: String?) {
            self.data = data

            self.paymentFlowData = paymentFlowData

            self.paymentFlow = paymentFlow

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
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentFlowData = try container.decode(String.self, forKey: .paymentFlowData)

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

            do {
                apiLink = try container.decode(String.self, forKey: .apiLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(data, forKey: .data)

            try? container.encode(paymentFlowData, forKey: .paymentFlowData)

            try? container.encode(paymentFlow, forKey: .paymentFlow)

            try? container.encode(apiLink, forKey: .apiLink)
        }
    }

    /*
         Model: PaymentFlow
         Used By: Payment
     */
    class PaymentFlow: Codable {
        public var stripe: AggregatorRoute?

        public var razorpay: AggregatorRoute?

        public var upiRazorpay: AggregatorRoute?

        public var simpl: AggregatorRoute?

        public var juspay: AggregatorRoute?

        public var fynd: AggregatorRoute?

        public var ccavenue: AggregatorRoute?

        public var rupifi: AggregatorRoute?

        public var payubiz: AggregatorRoute?

        public var mswipe: AggregatorRoute?

        public var bqrRazorpay: AggregatorRoute?

        public enum CodingKeys: String, CodingKey {
            case stripe

            case razorpay

            case upiRazorpay = "upi_razorpay"

            case simpl

            case juspay

            case fynd

            case ccavenue

            case rupifi

            case payubiz

            case mswipe

            case bqrRazorpay = "bqr_razorpay"
        }

        public init(bqrRazorpay: AggregatorRoute?, ccavenue: AggregatorRoute?, fynd: AggregatorRoute?, juspay: AggregatorRoute?, mswipe: AggregatorRoute?, payubiz: AggregatorRoute?, razorpay: AggregatorRoute?, rupifi: AggregatorRoute?, simpl: AggregatorRoute?, stripe: AggregatorRoute?, upiRazorpay: AggregatorRoute?) {
            self.stripe = stripe

            self.razorpay = razorpay

            self.upiRazorpay = upiRazorpay

            self.simpl = simpl

            self.juspay = juspay

            self.fynd = fynd

            self.ccavenue = ccavenue

            self.rupifi = rupifi

            self.payubiz = payubiz

            self.mswipe = mswipe

            self.bqrRazorpay = bqrRazorpay
        }

        public func duplicate() -> PaymentFlow {
            let dict = self.dictionary!
            let copy = PaymentFlow(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stripe = try container.decode(AggregatorRoute.self, forKey: .stripe)

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
                upiRazorpay = try container.decode(AggregatorRoute.self, forKey: .upiRazorpay)

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

            do {
                juspay = try container.decode(AggregatorRoute.self, forKey: .juspay)

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
                ccavenue = try container.decode(AggregatorRoute.self, forKey: .ccavenue)

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
                payubiz = try container.decode(AggregatorRoute.self, forKey: .payubiz)

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
                bqrRazorpay = try container.decode(AggregatorRoute.self, forKey: .bqrRazorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(stripe, forKey: .stripe)

            try? container.encode(razorpay, forKey: .razorpay)

            try? container.encode(upiRazorpay, forKey: .upiRazorpay)

            try? container.encode(simpl, forKey: .simpl)

            try? container.encode(juspay, forKey: .juspay)

            try? container.encode(fynd, forKey: .fynd)

            try? container.encode(ccavenue, forKey: .ccavenue)

            try? container.encode(rupifi, forKey: .rupifi)

            try? container.encode(payubiz, forKey: .payubiz)

            try? container.encode(mswipe, forKey: .mswipe)

            try? container.encode(bqrRazorpay, forKey: .bqrRazorpay)
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
         Model: PaymentModeLogo
         Used By: Payment
     */
    class PaymentModeLogo: Codable {
        public var large: String

        public var small: String

        public enum CodingKeys: String, CodingKey {
            case large

            case small
        }

        public init(large: String, small: String) {
            self.large = large

            self.small = small
        }

        public func duplicate() -> PaymentModeLogo {
            let dict = self.dictionary!
            let copy = PaymentModeLogo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            large = try container.decode(String.self, forKey: .large)

            small = try container.decode(String.self, forKey: .small)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(large, forKey: .large)

            try? container.encodeIfPresent(small, forKey: .small)
        }
    }

    /*
         Model: IntentApp
         Used By: Payment
     */
    class IntentApp: Codable {
        public var packageName: String?

        public var logos: PaymentModeLogo?

        public var code: String?

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case packageName = "package_name"

            case logos

            case code

            case displayName = "display_name"
        }

        public init(code: String?, displayName: String?, logos: PaymentModeLogo?, packageName: String?) {
            self.packageName = packageName

            self.logos = logos

            self.code = code

            self.displayName = displayName
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
            } catch {}

            do {
                logos = try container.decode(PaymentModeLogo.self, forKey: .logos)

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
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(packageName, forKey: .packageName)

            try? container.encode(logos, forKey: .logos)

            try? container.encode(code, forKey: .code)

            try? container.encode(displayName, forKey: .displayName)
        }
    }

    /*
         Model: PaymentModeList
         Used By: Payment
     */
    class PaymentModeList: Codable {
        public var nickname: String?

        public var fyndVpa: String?

        public var cardId: String?

        public var expMonth: Int?

        public var cardFingerprint: String?

        public var intentAppErrorDictList: [IntentAppErrorList]?

        public var cardType: String?

        public var expYear: Int?

        public var merchantCode: String?

        public var displayName: String?

        public var cardIssuer: String?

        public var cardBrandImage: String?

        public var cardReference: String?

        public var name: String?

        public var retryCount: Int?

        public var displayPriority: Int?

        public var cardToken: String?

        public var logoUrl: PaymentModeLogo?

        public var expired: Bool?

        public var intentAppErrorList: [String]?

        public var cardIsin: String?

        public var intentFlow: Bool?

        public var aggregatorName: String

        public var timeout: Int?

        public var code: String?

        public var cardName: String?

        public var cardBrand: String?

        public var cardNumber: String?

        public var intentApp: [IntentApp]?

        public enum CodingKeys: String, CodingKey {
            case nickname

            case fyndVpa = "fynd_vpa"

            case cardId = "card_id"

            case expMonth = "exp_month"

            case cardFingerprint = "card_fingerprint"

            case intentAppErrorDictList = "intent_app_error_dict_list"

            case cardType = "card_type"

            case expYear = "exp_year"

            case merchantCode = "merchant_code"

            case displayName = "display_name"

            case cardIssuer = "card_issuer"

            case cardBrandImage = "card_brand_image"

            case cardReference = "card_reference"

            case name

            case retryCount = "retry_count"

            case displayPriority = "display_priority"

            case cardToken = "card_token"

            case logoUrl = "logo_url"

            case expired

            case intentAppErrorList = "intent_app_error_list"

            case cardIsin = "card_isin"

            case intentFlow = "intent_flow"

            case aggregatorName = "aggregator_name"

            case timeout

            case code

            case cardName = "card_name"

            case cardBrand = "card_brand"

            case cardNumber = "card_number"

            case intentApp = "intent_app"
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
            self.nickname = nickname

            self.fyndVpa = fyndVpa

            self.cardId = cardId

            self.expMonth = expMonth

            self.cardFingerprint = cardFingerprint

            self.intentAppErrorDictList = intentAppErrorDictList

            self.cardType = cardType

            self.expYear = expYear

            self.merchantCode = merchantCode

            self.displayName = displayName

            self.cardIssuer = cardIssuer

            self.cardBrandImage = cardBrandImage

            self.cardReference = cardReference

            self.name = name

            self.retryCount = retryCount

            self.displayPriority = displayPriority

            self.cardToken = cardToken

            self.logoUrl = logoUrl

            self.expired = expired

            self.intentAppErrorList = intentAppErrorList

            self.cardIsin = cardIsin

            self.intentFlow = intentFlow

            self.aggregatorName = aggregatorName

            self.timeout = timeout

            self.code = code

            self.cardName = cardName

            self.cardBrand = cardBrand

            self.cardNumber = cardNumber

            self.intentApp = intentApp
        }

        public func duplicate() -> PaymentModeList {
            let dict = self.dictionary!
            let copy = PaymentModeList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

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

            do {
                cardId = try container.decode(String.self, forKey: .cardId)

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
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)

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
                cardType = try container.decode(String.self, forKey: .cardType)

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
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

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
                name = try container.decode(String.self, forKey: .name)

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

            do {
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)

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
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)

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
                intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)

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
                intentFlow = try container.decode(Bool.self, forKey: .intentFlow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

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
                cardName = try container.decode(String.self, forKey: .cardName)

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
                cardNumber = try container.decode(String.self, forKey: .cardNumber)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(fyndVpa, forKey: .fyndVpa)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(merchantCode, forKey: .merchantCode)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(name, forKey: .name)

            try? container.encode(retryCount, forKey: .retryCount)

            try? container.encode(displayPriority, forKey: .displayPriority)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(intentFlow, forKey: .intentFlow)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(code, forKey: .code)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(intentApp, forKey: .intentApp)
        }
    }

    /*
         Model: RootPaymentMode
         Used By: Payment
     */
    class RootPaymentMode: Codable {
        public var name: String

        public var aggregatorName: String?

        public var displayPriority: Int

        public var addCardEnabled: Bool?

        public var anonymousEnable: Bool?

        public var list: [PaymentModeList]?

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case name

            case aggregatorName = "aggregator_name"

            case displayPriority = "display_priority"

            case addCardEnabled = "add_card_enabled"

            case anonymousEnable = "anonymous_enable"

            case list

            case displayName = "display_name"
        }

        public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, name: String) {
            self.name = name

            self.aggregatorName = aggregatorName

            self.displayPriority = displayPriority

            self.addCardEnabled = addCardEnabled

            self.anonymousEnable = anonymousEnable

            self.list = list

            self.displayName = displayName
        }

        public func duplicate() -> RootPaymentMode {
            let dict = self.dictionary!
            let copy = RootPaymentMode(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

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
                list = try container.decode([PaymentModeList].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
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
        public var paymentOptions: PaymentOptionAndFlow

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case paymentOptions = "payment_options"

            case success
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
            case status

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
            } catch {}

            do {
                kycUrl = try container.decode(String.self, forKey: .kycUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
         Model: TransferItemsDetails
         Used By: Payment
     */
    class TransferItemsDetails: Codable {
        public var name: String

        public var id: Int

        public var logoSmall: String

        public var logoLarge: String

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case id

            case logoSmall = "logo_small"

            case logoLarge = "logo_large"

            case displayName = "display_name"
        }

        public init(displayName: String?, id: Int, logoLarge: String, logoSmall: String, name: String) {
            self.name = name

            self.id = id

            self.logoSmall = logoSmall

            self.logoLarge = logoLarge

            self.displayName = displayName
        }

        public func duplicate() -> TransferItemsDetails {
            let dict = self.dictionary!
            let copy = TransferItemsDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            id = try container.decode(Int.self, forKey: .id)

            logoSmall = try container.decode(String.self, forKey: .logoSmall)

            logoLarge = try container.decode(String.self, forKey: .logoLarge)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)

            try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
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

        public init(displayName: String, items: [TransferItemsDetails]?) {
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
        public var enable: Bool

        public var transferMode: String

        public enum CodingKeys: String, CodingKey {
            case enable

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
            case success
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
        public var modifiedOn: String

        public var email: String

        public var isActive: Bool

        public var transferMode: String

        public var mobile: Bool?

        public var branchName: Bool?

        public var createdOn: String

        public var ifscCode: String

        public var comment: Bool?

        public var subtitle: String

        public var displayName: String

        public var id: Int

        public var accountHolder: String

        public var address: String

        public var bankName: String

        public var accountNo: String

        public var beneficiaryId: String

        public var title: String

        public var delightsUserName: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case email

            case isActive = "is_active"

            case transferMode = "transfer_mode"

            case mobile

            case branchName = "branch_name"

            case createdOn = "created_on"

            case ifscCode = "ifsc_code"

            case comment

            case subtitle

            case displayName = "display_name"

            case id

            case accountHolder = "account_holder"

            case address

            case bankName = "bank_name"

            case accountNo = "account_no"

            case beneficiaryId = "beneficiary_id"

            case title

            case delightsUserName = "delights_user_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String?, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.modifiedOn = modifiedOn

            self.email = email

            self.isActive = isActive

            self.transferMode = transferMode

            self.mobile = mobile

            self.branchName = branchName

            self.createdOn = createdOn

            self.ifscCode = ifscCode

            self.comment = comment

            self.subtitle = subtitle

            self.displayName = displayName

            self.id = id

            self.accountHolder = accountHolder

            self.address = address

            self.bankName = bankName

            self.accountNo = accountNo

            self.beneficiaryId = beneficiaryId

            self.title = title

            self.delightsUserName = delightsUserName
        }

        public func duplicate() -> OrderBeneficiaryDetails {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            email = try container.decode(String.self, forKey: .email)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            displayName = try container.decode(String.self, forKey: .displayName)

            id = try container.decode(Int.self, forKey: .id)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            address = try container.decode(String.self, forKey: .address)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            title = try container.decode(String.self, forKey: .title)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encode(delightsUserName, forKey: .delightsUserName)
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
            case beneficiaries

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
            } catch {}

            do {
                showBeneficiaryDetails = try container.decode(Bool.self, forKey: .showBeneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
        public var success: Bool

        public var code: String

        public var description: String

        public enum CodingKeys: String, CodingKey {
            case success

            case code

            case description
        }

        public init(code: String, description: String, success: Bool) {
            self.success = success

            self.code = code

            self.description = description
        }

        public func duplicate() -> NotFoundResourceError {
            let dict = self.dictionary!
            let copy = NotFoundResourceError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            code = try container.decode(String.self, forKey: .code)

            description = try container.decode(String.self, forKey: .description)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }

    /*
         Model: IfscCodeResponse
         Used By: Payment
     */
    class IfscCodeResponse: Codable {
        public var success: Bool?

        public var bankName: String

        public var branchName: String

        public enum CodingKeys: String, CodingKey {
            case success

            case bankName = "bank_name"

            case branchName = "branch_name"
        }

        public init(bankName: String, branchName: String, success: Bool?) {
            self.success = success

            self.bankName = bankName

            self.branchName = branchName
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

            bankName = try container.decode(String.self, forKey: .bankName)

            branchName = try container.decode(String.self, forKey: .branchName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)
        }
    }

    /*
         Model: ErrorCodeDescription
         Used By: Payment
     */
    class ErrorCodeDescription: Codable {
        public var success: Bool

        public var code: String

        public var description: String

        public enum CodingKeys: String, CodingKey {
            case success

            case code

            case description
        }

        public init(code: String, description: String, success: Bool) {
            self.success = success

            self.code = code

            self.description = description
        }

        public func duplicate() -> ErrorCodeDescription {
            let dict = self.dictionary!
            let copy = ErrorCodeDescription(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            code = try container.decode(String.self, forKey: .code)

            description = try container.decode(String.self, forKey: .description)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(description, forKey: .description)
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

        public init(message: String, success: Bool?) {
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
        public var isVerifiedFlag: Bool

        public var success: String

        public var description: String

        public enum CodingKeys: String, CodingKey {
            case isVerifiedFlag = "is_verified_flag"

            case success

            case description
        }

        public init(description: String, isVerifiedFlag: Bool, success: String) {
            self.isVerifiedFlag = isVerifiedFlag

            self.success = success

            self.description = description
        }

        public func duplicate() -> WrongOtpError {
            let dict = self.dictionary!
            let copy = WrongOtpError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)

            success = try container.decode(String.self, forKey: .success)

            description = try container.decode(String.self, forKey: .description)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }

    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */
    class BeneficiaryModeDetails: Codable {
        public var comment: String?

        public var ifscCode: String

        public var vpa: String?

        public var email: String

        public var wallet: String?

        public var accountHolder: String

        public var mobile: String

        public var accountNo: String

        public var address: String?

        public var bankName: String

        public var branchName: String

        public enum CodingKeys: String, CodingKey {
            case comment

            case ifscCode = "ifsc_code"

            case vpa

            case email

            case wallet

            case accountHolder = "account_holder"

            case mobile

            case accountNo = "account_no"

            case address

            case bankName = "bank_name"

            case branchName = "branch_name"
        }

        public init(accountHolder: String, accountNo: String, address: String?, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String, vpa: String?, wallet: String?) {
            self.comment = comment

            self.ifscCode = ifscCode

            self.vpa = vpa

            self.email = email

            self.wallet = wallet

            self.accountHolder = accountHolder

            self.mobile = mobile

            self.accountNo = accountNo

            self.address = address

            self.bankName = bankName

            self.branchName = branchName
        }

        public func duplicate() -> BeneficiaryModeDetails {
            let dict = self.dictionary!
            let copy = BeneficiaryModeDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            mobile = try container.decode(String.self, forKey: .mobile)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            branchName = try container.decode(String.self, forKey: .branchName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(wallet, forKey: .wallet)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)
        }
    }

    /*
         Model: AddBeneficiaryDetailsRequest
         Used By: Payment
     */
    class AddBeneficiaryDetailsRequest: Codable {
        public var otp: String?

        public var details: BeneficiaryModeDetails

        public var shipmentId: String

        public var orderId: String

        public var delights: Bool

        public var transferMode: String

        public var requestId: String?

        public enum CodingKeys: String, CodingKey {
            case otp

            case details

            case shipmentId = "shipment_id"

            case orderId = "order_id"

            case delights

            case transferMode = "transfer_mode"

            case requestId = "request_id"
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String?, requestId: String?, shipmentId: String, transferMode: String) {
            self.otp = otp

            self.details = details

            self.shipmentId = shipmentId

            self.orderId = orderId

            self.delights = delights

            self.transferMode = transferMode

            self.requestId = requestId
        }

        public func duplicate() -> AddBeneficiaryDetailsRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                otp = try container.decode(String.self, forKey: .otp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            orderId = try container.decode(String.self, forKey: .orderId)

            delights = try container.decode(Bool.self, forKey: .delights)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(delights, forKey: .delights)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(requestId, forKey: .requestId)
        }
    }

    /*
         Model: RefundAccountResponse
         Used By: Payment
     */
    class RefundAccountResponse: Codable {
        public var isVerifiedFlag: Bool?

        public var success: Bool

        public var data: [String: Any]?

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case isVerifiedFlag = "is_verified_flag"

            case success

            case data

            case message
        }

        public init(data: [String: Any]?, isVerifiedFlag: Bool?, message: String, success: Bool) {
            self.isVerifiedFlag = isVerifiedFlag

            self.success = success

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

            do {
                isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

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

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: BankDetailsForOTP
         Used By: Payment
     */
    class BankDetailsForOTP: Codable {
        public var ifscCode: String

        public var accountHolder: String

        public var accountNo: String

        public var bankName: String

        public var branchName: String

        public enum CodingKeys: String, CodingKey {
            case ifscCode = "ifsc_code"

            case accountHolder = "account_holder"

            case accountNo = "account_no"

            case bankName = "bank_name"

            case branchName = "branch_name"
        }

        public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
            self.ifscCode = ifscCode

            self.accountHolder = accountHolder

            self.accountNo = accountNo

            self.bankName = bankName

            self.branchName = branchName
        }

        public func duplicate() -> BankDetailsForOTP {
            let dict = self.dictionary!
            let copy = BankDetailsForOTP(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            bankName = try container.decode(String.self, forKey: .bankName)

            branchName = try container.decode(String.self, forKey: .branchName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)
        }
    }

    /*
         Model: AddBeneficiaryDetailsOTPRequest
         Used By: Payment
     */
    class AddBeneficiaryDetailsOTPRequest: Codable {
        public var details: BankDetailsForOTP

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case details

            case orderId = "order_id"
        }

        public init(details: BankDetailsForOTP, orderId: String) {
            self.details = details

            self.orderId = orderId
        }

        public func duplicate() -> AddBeneficiaryDetailsOTPRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryDetailsOTPRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            details = try container.decode(BankDetailsForOTP.self, forKey: .details)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
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

            case mobile
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

        public var success: Bool?

        public var requestId: String

        public enum CodingKeys: String, CodingKey {
            case isVerifiedFlag = "is_verified_flag"

            case success

            case requestId = "request_id"
        }

        public init(isVerifiedFlag: String, requestId: String, success: Bool?) {
            self.isVerifiedFlag = isVerifiedFlag

            self.success = success

            self.requestId = requestId
        }

        public func duplicate() -> WalletOtpResponse {
            let dict = self.dictionary!
            let copy = WalletOtpResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            requestId = try container.decode(String.self, forKey: .requestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(success, forKey: .success)

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

        public init(isBeneficiarySet: Bool, success: Bool?) {
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
}
