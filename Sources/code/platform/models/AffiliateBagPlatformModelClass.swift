

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var id: String

        public var itemSize: String

        public var companyId: Int

        public var itemId: Int

        public var storeId: Int

        public var priceEffective: Double

        public var identifier: [String: Any]

        public var sku: String

        public var transferPrice: Int

        public var modifiedOn: String

        public var amountPaid: Double

        public var unitPrice: Double

        public var priceMarked: Double

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var avlQty: Int

        public var affiliateStoreId: String

        public var fyndStoreId: String

        public var affiliateMeta: [String: Any]

        public var discount: Double

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case id = "_id"

            case itemSize = "item_size"

            case companyId = "company_id"

            case itemId = "item_id"

            case storeId = "store_id"

            case priceEffective = "price_effective"

            case identifier

            case sku

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"

            case fyndStoreId = "fynd_store_id"

            case affiliateMeta = "affiliate_meta"

            case discount

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.id = id

            self.itemSize = itemSize

            self.companyId = companyId

            self.itemId = itemId

            self.storeId = storeId

            self.priceEffective = priceEffective

            self.identifier = identifier

            self.sku = sku

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId

            self.fyndStoreId = fyndStoreId

            self.affiliateMeta = affiliateMeta

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sku = try container.decode(String.self, forKey: .sku)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
