

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sellerIdentifier: String

        public var id: String

        public var quantity: Int

        public var identifier: [String: Any]

        public var itemSize: String

        public var affiliateStoreId: String

        public var amountPaid: Double

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var priceEffective: Double

        public var itemId: Int

        public var modifiedOn: String

        public var transferPrice: Int

        public var priceMarked: Double

        public var sku: String

        public var unitPrice: Double

        public var discount: Double

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var hsnCodeId: String

        public var companyId: Int

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case quantity

            case identifier

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case sku

            case unitPrice = "unit_price"

            case discount

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.quantity = quantity

            self.identifier = identifier

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.sku = sku

            self.unitPrice = unitPrice

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
