

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateMeta: [String: Any]

        public var id: String

        public var priceEffective: Double

        public var quantity: Int

        public var unitPrice: Double

        public var sku: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var companyId: Int

        public var amountPaid: Double

        public var itemSize: String

        public var modifiedOn: String

        public var storeId: Int

        public var avlQty: Int

        public var priceMarked: Double

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var itemId: Int

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case priceEffective = "price_effective"

            case quantity

            case unitPrice = "unit_price"

            case sku

            case discount

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case affiliateStoreId = "affiliate_store_id"

            case identifier

            case transferPrice = "transfer_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.id = id

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.unitPrice = unitPrice

            self.sku = sku

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.storeId = storeId

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}
