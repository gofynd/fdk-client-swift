

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var id: String

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var storeId: Int

        public var amountPaid: Double

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var discount: Double

        public var sku: String

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var modifiedOn: String

        public var itemSize: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case id = "_id"

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case sku

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.id = id

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.sku = sku

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var id: String

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var storeId: Int

        public var amountPaid: Double

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var discount: Double

        public var sku: String

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var modifiedOn: String

        public var itemSize: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case id = "_id"

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case sku

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.id = id

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.sku = sku

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        }
    }
}
