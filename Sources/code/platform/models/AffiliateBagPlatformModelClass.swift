

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var id: String

        public var sellerIdentifier: String

        public var affiliateStoreId: String

        public var discount: Double

        public var hsnCodeId: String

        public var companyId: Int

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var priceMarked: Double

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var modifiedOn: String

        public var priceEffective: Double

        public var amountPaid: Double

        public var affiliateMeta: [String: Any]

        public var deliveryCharge: Double

        public var sku: String

        public var itemSize: String

        public var avlQty: Int

        public var fyndStoreId: String

        public var transferPrice: Int

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case quantity

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case identifier

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case affiliateMeta = "affiliate_meta"

            case deliveryCharge = "delivery_charge"

            case sku

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.affiliateMeta = affiliateMeta

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
