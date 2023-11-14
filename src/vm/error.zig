/// Represents different error conditions that occur in the Cairo VM.
pub const CairoVMError = error{
    /// Adding two relocatables is forbidden.
    AddRelocToRelocForbidden,
    /// Memory access is out of bounds.
    MemoryOutOfBounds,
    /// Multiplying with a relocatable is forbidden.
    MulRelocForbidden,
    /// TODO, Invalid memory address encountered.
    InvalidMemoryAddress,
    /// Failed to fetch instruction from VM during the instruction cycle.
    InstructionFetchingFailed,
    /// Error in converting the encoded instruction to a u64.
    InstructionEncodingError,
    /// TODO, this error type is never used. ResLogic constants parsing related?
    ParseResLogicError,
    /// Occurs when values of different types are subtracted.
    TypeMismatchNotFelt,
    /// Error encountered with a built-in runner.
    RunnerError,
    /// Occurs when the expected value is not a Relocatable,
    /// or when subtracting two relocatables with different segment indices.
    TypeMismatchNotRelocatable,
    /// Value is too large to be coerced to a u64.
    ValueTooLarge,
    /// Occurs when both built-in deductions and fallback deductions for the operands fail.
    FailedToComputeOperands,
    /// No destination register can be deduced for the given opcode.
    NoDst,
    /// Occurs when both built-in deductions and fallback deductions fail to deduce Op1.
    FailedToComputeOp1,
};

/// Represent different error conditions that are memory-related.
pub const MemoryError = error{
    /// The amount of used cells associated with the Range Check runner is not available.
    MissingSegmentUsedSizes,
};

/// Reepresents different error conditions that occur in the built-in runners.
pub const RunnerError = error{
    /// Errors associated with computing the address of a stop pointer of RangeCheckBuiltinRunner
    /// Raised when underflow occurs (i.e., subtracting 1 from 0),
    /// or when it fails to get a value for the computed address.
    NoStopPointer,
    /// Invalid stop pointer index occured in calculation of the final stack.
    InvalidStopPointerIndex,
    /// Invalid stop pointer occured in calculation of the final stack.
    InvalidStopPointer,
    /// Raised when the conversion into a type of integer (e.g. a Felt) fails.
    BuiltinExpectedInteger,
};
