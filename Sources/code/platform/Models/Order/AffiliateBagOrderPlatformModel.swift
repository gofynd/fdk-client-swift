

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var deliveryCharge: Double

        public var sku: String

        public var itemId: Int

        public var identifier: [String: Any]

        public var itemSize: String

        public var modifiedOn: String

        public var amountPaid: Double

        public var hsnCodeId: String

        public var priceMarked: Double

        public var fyndStoreId: String

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var quantity: Int

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var discount: Double

        public var unitPrice: Double

        public var sellerIdentifier: String

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var priceEffective: Double

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case deliveryCharge = "delivery_charge"

            case sku

            case itemId = "item_id"

            case identifier

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case priceMarked = "price_marked"

            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case quantity

            case pdfLinks = "pdf_links"

            case id = "_id"

            case discount

            case unitPrice = "unit_price"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case priceEffective = "price_effective"

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.itemId = itemId

            self.identifier = identifier

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.priceMarked = priceMarked

            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity

            self.pdfLinks = pdfLinks

            self.id = id

            self.discount = discount

            self.unitPrice = unitPrice

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.priceEffective = priceEffective

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var deliveryCharge: Double

        public var sku: String

        public var itemId: Int

        public var identifier: [String: Any]

        public var itemSize: String

        public var modifiedOn: String

        public var amountPaid: Double

        public var hsnCodeId: String

        public var priceMarked: Double

        public var fyndStoreId: String

        public var transferPrice: Int

        public var affiliateStoreId: String

        public var quantity: Int

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var discount: Double

        public var unitPrice: Double

        public var sellerIdentifier: String

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var priceEffective: Double

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case deliveryCharge = "delivery_charge"

            case sku

            case itemId = "item_id"

            case identifier

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case priceMarked = "price_marked"

            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case quantity

            case pdfLinks = "pdf_links"

            case id = "_id"

            case discount

            case unitPrice = "unit_price"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case priceEffective = "price_effective"

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.itemId = itemId

            self.identifier = identifier

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.priceMarked = priceMarked

            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity

            self.pdfLinks = pdfLinks

            self.id = id

            self.discount = discount

            self.unitPrice = unitPrice

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.priceEffective = priceEffective

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
