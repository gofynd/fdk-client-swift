

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var hsnCodeId: String

        public var itemId: Int

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var sku: String

        public var modifiedOn: String

        public var id: String

        public var unitPrice: Double

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var quantity: Int

        public var identifier: [String: Any]

        public var storeId: Int

        public var priceEffective: Double

        public var affiliateStoreId: String

        public var amountPaid: Double

        public var transferPrice: Int

        public var itemSize: String

        public var avlQty: Int

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var discount: Double

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case sku

            case modifiedOn = "modified_on"

            case id = "_id"

            case unitPrice = "unit_price"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case quantity

            case identifier

            case storeId = "store_id"

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case discount

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.sku = sku

            self.modifiedOn = modifiedOn

            self.id = id

            self.unitPrice = unitPrice

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.quantity = quantity

            self.identifier = identifier

            self.storeId = storeId

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.discount = discount

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sku = try container.decode(String.self, forKey: .sku)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
